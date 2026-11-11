.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle rdi, rdx
lea rax, qword ptr [rax + rbx]
add al, -101 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
lea edi, qword ptr [rsi]
lea dx, qword ptr [rax + rdx]
or ax, -114
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
sbb cl, 105
jns .bb_0.1
jmp .exit_0
.bb_0.1:
btr rdx, rax
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rdx
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rcx]
test dl, -36
add cl, -123 # instrumentation
cmovnp rdi, rdx
and rbx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
