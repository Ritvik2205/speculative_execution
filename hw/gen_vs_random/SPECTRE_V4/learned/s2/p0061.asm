.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -50
test dil, -58
xor dil, al
sbb bl, -75
xchg rsi, rdi
sub dl, 107
adc dl, bl
add bl, dil
cmp cl, 100
dec dil
sub al, 127
sbb cl, 35
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and al, dl
xor al, dl
and al, dl
adc cl, al
xchg ax, dx
inc ecx
and rbx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rbx]
xchg rax, rdx
sbb dl, 75
dec al
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
xor dil, cl
adc cl, -54
xor dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
