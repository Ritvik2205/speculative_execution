.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rsi]
or di, 15
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
or rsi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
xor sil, dl
add al, -34 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 900640967
cmovno rax, rcx
xchg ebx, esi
and rax, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], sil
and dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
