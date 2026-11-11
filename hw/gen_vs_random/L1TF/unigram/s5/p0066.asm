.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
and si, di
cmovnb eax, ebx
add al, 87 # instrumentation
cmovo rsi, rcx
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], cl
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
cmovno bx, dx
jmp .bb_0.1
.bb_0.1:
add bl, -80 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdi]
add dl, 100 # instrumentation
lea di, qword ptr [rdx]
lea esi, qword ptr [rcx + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rcx]
cmovnp rdi, rdi
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
