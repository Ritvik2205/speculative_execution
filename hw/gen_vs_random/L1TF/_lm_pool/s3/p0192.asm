.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 74
sub dl, -34
xor edi, 27
or bl, -88
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rcx]
bt ecx, eax
cmovl ebx, eax
jmp .bb_0.2
.bb_0.2:
add edi, 4
jmp .bb_0.3
.bb_0.3:
test al, -84
cmp al, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
