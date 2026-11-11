.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, cl
or rdi, 29
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
xor al, bl
and cl, 89
cmovle rdi, rdx
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
cmovnp si, cx
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
lea rbx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
