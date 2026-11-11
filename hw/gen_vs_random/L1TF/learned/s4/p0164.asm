.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 116
cmp rsi, 60
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
not eax
xor cl, al
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
add bl, -113 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
setno al
sub al, 9
and rcx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
