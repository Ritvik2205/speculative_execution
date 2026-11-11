.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dl
xchg di, cx
lea edi, qword ptr [rdi]
and rsi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rsi]
add bl, 110 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rcx]
or cl, 24
and rbx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rbx]
cmovb edx, edi
cmp al, bl
and esi, 9
lea rbx, qword ptr [rax + rsi + 23]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 101
and cl, bl
lea ecx, qword ptr [rsi + rdi + 73]
xor si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
