.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdi]
mov al, dil
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], sil
btc cx, ax
sub dl, -48
and rdi, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdi]
add edi, -91
xor al, -89
lea cx, qword ptr [rdi + rax + 53]
test cl, -24
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
