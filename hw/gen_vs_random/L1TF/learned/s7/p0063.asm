.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rcx]
xor dl, 19
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
sub bl, -96
test dl, -37
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
seto dil
jmp .bb_0.1
.bb_0.1:
add bl, -113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
or al, -48
jmp .bb_0.2
.bb_0.2:
test al, 15
cmp al, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
