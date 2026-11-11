.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
add sil, cl
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
add bl, -37 # instrumentation
dec al
and rbx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rbx]
add bl, bl
lea cx, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 96
cmovl ebx, ecx
or esi, 19
lea si, qword ptr [rsi + rdi + 37]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
bt rcx, rdi
and rcx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
