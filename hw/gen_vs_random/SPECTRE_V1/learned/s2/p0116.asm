.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
lea rcx, qword ptr [rsi]
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
sub rax, 1451608022
xchg rsi, rcx
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 79
btc rbx, 195
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rbx]
imul bl
cmp ax, 23607
add dl, -124 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
