.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, cl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
xor al, -89
add cl, dl
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
sbb eax, 1332762061
add al, -13
cmp sil, al
xchg ebx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
