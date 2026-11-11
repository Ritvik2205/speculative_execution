.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
xor sil, sil
xor cl, dl
btr ebx, edx
test al, -5
add dil, 113 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
sub eax, -911655926
inc al
setle bl
jmp .bb_0.1
.bb_0.1:
cmp bl, al
add al, -3 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
inc bx
lea rcx, qword ptr [rcx + rbx + 5]
bt bx, bx
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
