.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rdi
cmp rbx, 25
add ax, 6656
dec dil
and bl, 124
lea rax, qword ptr [rcx + rdx + 86]
and al, al
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
adc sil, cl
test bl, -8
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and al, dil
add al, -44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
