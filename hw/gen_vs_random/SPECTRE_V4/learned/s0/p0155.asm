.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, al
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], esi
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
test eax, -651442446
sbb al, -52
adc bx, 52
cmp sil, 113
adc ax, 15251
sub dl, 107
xor dil, cl
dec cl
sub dl, -16
add al, cl
btc rdx, rbx
and bl, cl
sub al, 86
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi], 17
test dl, -81
sub dl, al
and rax, 1827025056
and al, cl
test bl, cl
xor al, 57
cmp al, 105
sub al, 86
cmovno ax, si
adc bl, 0
xor bl, dl
sub bl, cl
xor cl, -15
cmp dil, -29
cmp al, -1
or cl, bl
not di
sub di, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
