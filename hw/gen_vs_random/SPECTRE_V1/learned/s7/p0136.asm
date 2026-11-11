.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 74
sbb al, 66
lea di, qword ptr [rax]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dil
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
add cl, dil
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 81
jl .bb_0.1
jmp .exit_0
.bb_0.1:
xor sil, -33
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
sub al, -66
test bl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
