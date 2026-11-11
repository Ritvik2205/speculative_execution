.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 20
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], eax
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
inc rcx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
imul ebx, edi, 34
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
add bl, -37 # instrumentation
dec cl
and rsi, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rsi]
neg cl
dec ax
sub rdi, 29
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
and rsi, 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
