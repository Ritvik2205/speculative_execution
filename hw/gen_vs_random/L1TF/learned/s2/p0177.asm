.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov cl, dl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rdi
and eax, -409673666
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], si
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
cmp al, 27
xor dl, sil
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
