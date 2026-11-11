.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 57
cmp al, -78
sub al, 11
cmp dl, bl
cmp edx, 4
cmp dil, cl
or cl, al
and al, 41
sub al, 127
xor bx, ax
adc sil, dl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
cmp sil, dil
or al, dil
cmp sil, dil
cmp sil, al
cmp rax, 40
sub rdi, -34
adc sil, 77
adc sil, -112
xchg edx, esi
sub cl, dl
neg dil
sub bl, cl
adc al, -117
sub dil, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
