.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, cl
add bl, bl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
or al, -57
jmp .bb_0.1
.bb_0.1:
or bl, dl
cmp al, 56
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -80
not bl
and al, -68
and rax, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
add al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
