.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 3
and rsi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rsi]
movzx esi, bx
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dil
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], cx
and rcx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], -46
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rsi
cmovbe rcx, rbx
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], eax
cmovo rdx, rbx
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 67
and rsi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
