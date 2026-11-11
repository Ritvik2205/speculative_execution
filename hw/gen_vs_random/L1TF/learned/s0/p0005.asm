.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -104 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
sbb ecx, 82
cmp al, dil
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 15
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
lea rax, qword ptr [rdx + rbx]
jmp .bb_0.1
.bb_0.1:
adc sil, cl
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
