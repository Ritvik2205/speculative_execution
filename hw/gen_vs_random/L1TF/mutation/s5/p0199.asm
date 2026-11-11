.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 78 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
xchg si, bx
cmovz rdx, rcx
mov bl, 35
or al, dl
sub dil, 87
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdx]
add cl, 108 # instrumentation
setl cl
lea rdi, qword ptr [rdi + rcx]
jmp .bb_0.1
.bb_0.1:
add al, -46
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
and bl, dl
sub dl, al
sbb bl, cl
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
