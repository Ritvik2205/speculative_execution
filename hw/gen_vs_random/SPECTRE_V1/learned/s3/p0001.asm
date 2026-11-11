.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
test al, 59
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb eax, 1332762061
js .bb_0.2
jmp .exit_0
.bb_0.2:
sbb al, dl
cmovno cx, dx
adc cl, -19
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
sbb eax, 100
lea ecx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
