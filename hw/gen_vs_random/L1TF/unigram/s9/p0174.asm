.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdx
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx], 25
add bl, -37 # instrumentation
dec al
bts ecx, edx
lea ax, qword ptr [rdx + rdx]
sub ax, -3178
btc rsi, 3
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rdi
sub di, 22
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], cl
or dil, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 1 # instrumentation
add bl, -9 # instrumentation
cmovs di, ax
add dil, -95 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
or edi, edx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 62
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
imul eax, esi, 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
