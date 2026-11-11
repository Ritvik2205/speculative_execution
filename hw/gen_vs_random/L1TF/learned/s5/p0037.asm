.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
and al, -68
and al, -68
add cl, cl
or ax, -18131
jmp .bb_0.1
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jp .bb_0.3
jmp .bb_0.4
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
jmp .bb_0.4
.bb_0.4:
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
