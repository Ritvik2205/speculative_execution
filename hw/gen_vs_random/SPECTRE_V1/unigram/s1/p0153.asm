.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub edx, -63
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdx], 4
add dil, -61 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rax]
or ax, ax
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], cx
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
jrcxz .bb_0.1
jmp .exit_0
.bb_0.1:
movsx di, bl
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rax
and rdi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
