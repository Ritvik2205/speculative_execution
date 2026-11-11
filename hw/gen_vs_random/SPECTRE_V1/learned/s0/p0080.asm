.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rcx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
add cl, dil
test bl, -8
add rax, -704585563
xor cl, al
and sil, 111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
