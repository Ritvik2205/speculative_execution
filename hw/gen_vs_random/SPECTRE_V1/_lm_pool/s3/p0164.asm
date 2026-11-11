.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec cx
and rsi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rsi]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea rax, qword ptr [rbx + rdx + 34714]
xor dl, dl
add ebx, -116
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
add cl, -127
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
and al, dil
sub cl, sil
xchg dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
