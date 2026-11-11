.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dil, -70
add dl, 78 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
mov bl, 35
lea rdi, qword ptr [rdi + rcx]
xchg si, bx
or al, dl
add cl, 108 # instrumentation
setl cl
cmovz rdx, rcx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and bl, dl
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
sub dl, al
add al, 93
sbb bl, cl
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
