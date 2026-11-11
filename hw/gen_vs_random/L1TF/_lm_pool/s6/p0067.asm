.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 104 # instrumentation
mov eax, 80
lea ebx, qword ptr [rdx]
xor dl, al
and rcx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
cmp si, 18
jmp .bb_0.2
.bb_0.2:
xchg dx, bx
cmp dl, -56
test bl, 12
cmp sil, -11
bt rax, rbx
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
