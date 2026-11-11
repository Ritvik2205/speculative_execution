.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdi]
cmovb bx, ax
mov cl, dil
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], ecx
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
