.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bl, dl
lea ecx, qword ptr [rdx + rdx + 56339]
and rdx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdx]
xor bl, al
add dl, -108 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rsi]
mov al, -28
and rdx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rdx]
cmovnp rsi, rcx
jno .bb_0.1
jmp .exit_0
.bb_0.1:
lea rsi, qword ptr [rax + rdx]
and rdx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdx]
imul edx
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
dec sil
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdx
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], -45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
