.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 104 # instrumentation
mov ebx, 77
xor dil, -42
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], si
test edi, 4
sub rax, -15
bt di, 46
jmp .bb_0.2
.bb_0.2:
and dl, 0 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
