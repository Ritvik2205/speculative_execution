.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rbx]
xchg eax, edi
mov rdi, -5671708760962025403
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rbx]
lea rdx, qword ptr [rdi + rsi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ebx
lea bx, qword ptr [rax + rdi]
cmovp edx, ebx
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
sub rax, 788906357
xor rdi, rdi
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rdx
neg sil
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
