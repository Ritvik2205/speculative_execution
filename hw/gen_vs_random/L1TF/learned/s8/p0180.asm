.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 16
xor rsi, 34
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 105
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
xor sil, al
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 3
cmovb ax, dx
sbb sil, cl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
