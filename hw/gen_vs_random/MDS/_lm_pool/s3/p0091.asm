.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs bx, ax
test al, 91
test al, -81
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
btc ebx, 149
or bl, al
or bl, bl
bt ax, cx
and dil, dil
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
or dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
