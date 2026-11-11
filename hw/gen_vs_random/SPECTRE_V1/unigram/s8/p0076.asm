.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
test di, 86
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rax]
lea rdx, qword ptr [rdx + rbx]
add cl, 36 # instrumentation
sub rdi, rdi
add rcx, 23
neg rax
add cl, 107 # instrumentation
lea esi, qword ptr [rbx + rdx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
test rdi, -1846965753
and rbx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rbx]
sbb ebx, 54
and rsi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rsi]
lea rbx, qword ptr [rdi]
cmp ebx, ecx
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
