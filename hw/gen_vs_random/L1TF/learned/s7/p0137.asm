.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 97
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], sil
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
add cl, sil
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 37
jl .bb_0.1
jmp .exit_0
.bb_0.1:
xor sil, 64
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
sub al, 9
test bl, -92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
