.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, cl
and dil, cl
test bl, al
xchg rax, rcx
and al, dil
xor dl, -123
mov cl, cl
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
mov bl, dil
cmp cl, -105
xor ax, 45
sub bl, cl
add al, 19
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
and di, -65
mov dil, bl
sub cx, -114
cmp al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
