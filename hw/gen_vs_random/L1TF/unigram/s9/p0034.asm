.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
or rbx, 18
lea rsi, qword ptr [rdx + rdi + 78]
dec esi
test edx, 1891691791
and rcx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 27
imul dl
btc ax, ax
add al, -110 # instrumentation
btr ax, 52
and bl, bl
and rcx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rax]
sub si, 83
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
