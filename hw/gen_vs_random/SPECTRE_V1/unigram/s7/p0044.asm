.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ebx, -116
and dil, bl
xor cx, 23
lea rbx, qword ptr [rdx + rsi + 34562]
xor bl, cl
add sil, -68
and rax, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rax]
sbb al, al
add bl, -5 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dil
jl .bb_0.1
jmp .exit_0
.bb_0.1:
xor ecx, ebx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 59
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdx]
sub bl, dl
cmovle si, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
