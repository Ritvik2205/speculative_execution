.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs si, bx
cmovnle rdi, rax
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rdx
and bl, 89
jmp .bb_0.1
.bb_0.1:
add cl, 89 # instrumentation
adc al, bl
jmp .bb_0.2
.bb_0.2:
lea ax, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and al, -68
cmovnp ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
