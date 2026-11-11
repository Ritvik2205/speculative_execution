.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rax + rbx]
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
add al, -101 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
sbb cl, 105
or ax, -114
lea edi, qword ptr [rsi]
lea dx, qword ptr [rax + rdx]
cmovnle rdi, rdx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rdx
add cl, -123 # instrumentation
cmovnp rdi, rdx
test dl, 113
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
btr rdx, rax
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
