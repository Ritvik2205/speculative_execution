.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, sil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
adc al, dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
adc dl, 107
add cl, -127
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, ecx
and rax, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rax]
lea ax, qword ptr [rcx + rdx + 74]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], bl
test dil, -116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
