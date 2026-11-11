.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, -401020526
lea rcx, qword ptr [rsi + rcx + 155]
xor dl, sil
jmp .bb_0.1
.bb_0.1:
add al, -80
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dl
btc rdi, rdx
xchg edx, esi
and rbx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
