.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -17712
xor bl, dil
cmovbe di, si
cmp al, -106
dec bl
cmovno cx, si
jmp .bb_0.1
.bb_0.1:
add dl, cl
and al, 49
xor cx, -80
cmovb ax, bx
add cl, dl
cmp bl, al
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
adc al, dil
sub sil, -35
sub dl, bl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
xor ax, -22861
sub rcx, -99
add bl, cl
cmp bx, 113
dec bl
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
xor bl, 126
cmp dl, cl
not di
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
sub sil, 71
add dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
