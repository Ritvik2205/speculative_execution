.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edi, qword ptr [rbx + rbx + 3]
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 82
cmp dl, 119
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
imul al
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rbx
and rdi, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
xor edx, 5
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
or eax, -1161451853
lea rdx, qword ptr [rdx]
test bl, -8
and sil, bl
bt dx, di
and rdx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
