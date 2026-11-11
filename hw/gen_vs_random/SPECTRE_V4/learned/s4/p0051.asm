.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, -16
xor al, al
or al, dil
or bx, -33
cmovle rdi, rdx
adc dil, bl
or ax, 28571
mov cl, dl
or bl, dl
movsx di, sil
sub rsi, -48
and rax, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rax]
sbb cl, 12
and rdi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rdi]
add al, sil
xchg cx, bx
and al, -1
xor ax, 13332
sub edi, 12
cmp al, 115
and al, 75
or sil, sil
cmp dil, 53
and cl, 126
add al, -3
adc al, sil
cmp bl, 12
cmp dil, bl
adc al, cl
adc dl, cl
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
sub rax, -1066968986
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
