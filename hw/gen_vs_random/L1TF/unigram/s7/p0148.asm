.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test esi, eax
and rdi, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], -110
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
dec cx
and rdi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdi]
add dl, 70 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
cmp eax, -234754587
and rbx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 26
cmovns rbx, rdx
lea ax, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 51
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
