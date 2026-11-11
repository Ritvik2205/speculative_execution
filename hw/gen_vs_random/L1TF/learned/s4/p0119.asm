.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
or dl, bl
adc sil, dil
or al, -48
xor al, 38
sub dil, cl
xchg rax, rsi
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], 73
xor ax, 30996
test eax, -2032743474
test sil, 29
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
