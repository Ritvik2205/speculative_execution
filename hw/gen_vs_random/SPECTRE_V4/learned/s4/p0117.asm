.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dil
test edx, 1479885278
cmp rax, 1682181214
adc cl, dil
adc edx, -125
add dl, al
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
cmp cl, 49
adc dl, 50
cmp dil, cl
and ax, 13045
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
add cl, sil
and al, -118
mov cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
