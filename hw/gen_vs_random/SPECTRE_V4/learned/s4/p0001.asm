.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
add al, -44
sub cl, 18
or al, bl
adc bl, 79
cmp dil, bl
or rax, 185991441
or ax, 28571
xor dl, cl
cmovle si, cx
and al, sil
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
and bl, sil
or rax, 185991441
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
test dl, 114
xchg dx, ax
xor al, -60
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
adc sil, bl
sbb al, -4
and cl, al
and rdx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and bl, dil
xor al, sil
and bl, cl
sub al, cl
add dl, bl
sub al, 69
xor bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
