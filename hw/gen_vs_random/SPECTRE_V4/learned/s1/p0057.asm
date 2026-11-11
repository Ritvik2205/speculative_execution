.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 24
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
test al, 72
xor ax, 20236
or sil, sil
cmovno bx, di
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
xor cl, 13
sbb sil, -124
xor cl, dl
adc dil, bl
add al, -44
sub rax, 714283065
and bl, sil
sub cl, -32
test bl, al
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
cmp dl, bl
test eax, -651442446
and al, -1
or rsi, rax
or edi, -78
sub sil, -35
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
and dl, bl
or bl, -80
test dl, -81
and al, cl
test bl, dl
and rcx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and al, 41
test cl, dl
cmp rdx, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
