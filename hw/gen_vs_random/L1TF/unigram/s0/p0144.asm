.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rbx
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rbx
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dl
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
lea rcx, qword ptr [rdi + rcx + 62]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
xor dil, bl
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, esi
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
movzx eax, ax
sub dl, -34
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], esi
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
mov ebx, 675401645
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
or rsi, 1 # instrumentation
and rdx, rsi # instrumentation
shr rdx, 1 # instrumentation
div rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
