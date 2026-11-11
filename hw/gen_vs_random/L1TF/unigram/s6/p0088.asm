.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
sbb bl, bl
add bl, dl
or eax, esi
or di, 0b1000000000000000 # instrumentation
bsf bx, di
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
cmp sil, al
and rsi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rsi]
mov dx, ax
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -88
xchg rcx, rax
sbb rcx, rdi
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
imul al
xor di, 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
