from encode_prompts import EncodeDataset

from b64 import Base_64
from rot13 import ROT13
from upside_down import UpsideDown
from keyboard_cipher import KeyboardCipher
from leetspeak import LeetSpeak
from word_reversal import WordReversal
from grid import GridEncoding
from word_substitution import WordSubstitution
from art_prompt import ArtPrompt


# Dataset should contain keys: ['question', 'category', 'priming_sentence']
DATASET_PATH = '../../data/jailbreakbench.jsonl'
SAVE_DIR = '../../data/encrypted_variants_jailbreakbench'

if __name__ == '__main__':
    for class_instance in EncodeDataset.__subclasses__():
        class_instance(DATASET_PATH, SAVE_DIR).encode_dataset()