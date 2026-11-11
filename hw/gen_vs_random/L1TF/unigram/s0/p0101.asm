.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setb dil
and rdi, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rdi]
add cx, 4
add al, 78 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
cmovb esi, eax
add dl, -123 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
neg rsi
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdi]
mul esi
sub edx, -33
and edx, 39
and rdi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], ax
mov dil, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
