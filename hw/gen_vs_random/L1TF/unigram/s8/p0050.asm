.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp ax, cx
and rsi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rsi]
inc sil
movsx eax, bx
dec eax
lea bx, qword ptr [rax + rbx + 100]
and rbx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rbx]
movzx rax, bl
and rdi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdi]
cmovbe eax, edi
and rax, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], 90
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and dl, sil
btc cx, 36
sub ecx, 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
