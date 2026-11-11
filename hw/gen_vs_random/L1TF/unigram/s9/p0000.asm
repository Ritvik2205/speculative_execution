.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], sil
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
sub sil, -99
test bx, ax
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
sub sil, -99
setno dl
xor cl, dil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], al
and rsi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rsi]
btc esi, edi
or rsi, rcx
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
xor dil, dil
and rbx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
