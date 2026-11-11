.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec bx
xor al, 45
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
cmovl esi, edx
jmp .bb_0.1
.bb_0.1:
mov eax, edi
and cl, 67
jmp .bb_0.2
.bb_0.2:
add cl, 88
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
xor al, dil
neg rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
