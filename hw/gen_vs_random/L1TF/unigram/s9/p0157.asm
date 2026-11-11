.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 29
sub ecx, ecx
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ebx
add al, 44 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
bts edx, 11
lea bx, qword ptr [rsi]
jmp .bb_0.1
.bb_0.1:
test eax, 899472326
add cl, 115 # instrumentation
lea edi, qword ptr [rdi + rcx]
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
xor rcx, rax
and rsi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rsi]
movzx rsi, si
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 52
and ebx, edx
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
