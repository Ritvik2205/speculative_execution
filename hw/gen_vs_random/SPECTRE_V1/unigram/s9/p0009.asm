.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ebx, 45
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 84
and rdx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edi
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rax
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
add cl, 71 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], bx
and rax, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rax]
imul rdx, rdi, 38
and rax, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rax]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -104 # instrumentation
lea rax, qword ptr [rdx + rdi + 66]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
cmp edx, 44
sub bl, -6
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
sub sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
