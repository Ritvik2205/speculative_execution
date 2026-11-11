.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs ax, cx
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -41
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rbx
lea rcx, qword ptr [rdx + rax + 73]
xor dl, sil
add cl, -36
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 2
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
