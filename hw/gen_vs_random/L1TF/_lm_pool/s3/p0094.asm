.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 79
xor rbx, 64
lea rax, qword ptr [rdx + rdi]
or dl, bl
add dl, 22
sbb rax, -1841833326
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and bl, bl
xor bl, cl
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
