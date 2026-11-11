.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 123 # instrumentation
cmovo ax, si
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
or dl, bl
xor bl, -102
bt rdi, 36
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
or rax, -1561934807
jmp .bb_0.1
.bb_0.1:
and al, cl
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
