.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 20
xor cx, -80
and eax, -2040347881
sub cl, al
and ax, 26513
jmp .bb_0.1
.bb_0.1:
dec dil
dec dil
bts bx, 102
add ax, 17333
and rbx, 56
and bl, bl
cmp dil, cl
cmp dl, bl
dec dil
test al, 27
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], sil
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
and al, cl
dec dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
