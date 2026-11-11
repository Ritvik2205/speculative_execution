.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 79
not ecx
and rsi, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
test rsi, rdx
and rbx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], ecx
sub al, bl
mov dil, 55
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -71
test edi, edi
and dil, 58
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], dil
and rcx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
