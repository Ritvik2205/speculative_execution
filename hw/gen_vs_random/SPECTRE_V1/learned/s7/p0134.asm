.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -1
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
setns sil
lea eax, qword ptr [rdx]
xor al, al
xor al, cl
mov dl, al
cmp eax, 100
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 69
sbb bl, sil
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], cl
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov dil, dl
jns .bb_0.2
jmp .exit_0
.bb_0.2:
test dl, -105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
