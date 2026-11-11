.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
or edi, -78
or al, -83
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
xor al, -120
xor bx, -65
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
dec bl
sbb cl, 12
and di, -34
and al, cl
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
sub bl, -89
and dl, 24
sub al, 29
dec dil
cmp al, 114
test al, 115
test ebx, 17
cmp sil, dl
adc sil, 111
cmp bl, dl
cmp al, -1
movzx dx, cl
test eax, -251558852
or al, -16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
