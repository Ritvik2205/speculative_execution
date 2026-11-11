.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -48 # instrumentation
lea ecx, qword ptr [rcx + rbx]
adc sil, cl
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], cl
jmp .bb_0.1
.bb_0.1:
xor al, -127
and rdi, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rdi]
jp .bb_0.2
jmp .exit_0
.bb_0.2:
sub esi, 62
and rax, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
add dl, -18 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rbx]
sub ebx, ecx
lea rbx, qword ptr [rcx + rdx]
or si, -97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
