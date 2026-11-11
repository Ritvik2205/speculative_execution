.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, dil
add sil, dl
sub dl, 107
xor sil, 11
add dl, cl
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
sub al, sil
xor sil, dil
or al, -88
test eax, -31785616
xor dl, bl
or rax, -387680856
cmp al, -53
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
sbb cl, 12
sbb ax, 7207
and ax, -197
and dil, -120
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
mov al, dil
sub ecx, -107
xor ax, -17712
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
or cx, 59
and bl, al
xor dl, -123
xor al, 48
add sil, bl
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
cmp al, 114
cmp rax, 2096656187
add dil, -84
cmovnbe rdi, rcx
xor bl, sil
mov dl, al
and dx, -107
sub al, 63
or eax, -646827727
or dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
