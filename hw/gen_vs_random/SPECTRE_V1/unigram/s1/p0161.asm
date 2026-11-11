.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, 35
adc dl, 107
xor dx, dx
cmovnb rdi, rdx
mul dil
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rbx
add al, -104 # instrumentation
lea rax, qword ptr [rdx + rdi + 74]
add bl, -5 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
mov dl, bl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -65
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 28
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], cl
not dl
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], 77
lea cx, qword ptr [rdi + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
