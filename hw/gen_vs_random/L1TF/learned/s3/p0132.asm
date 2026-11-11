.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
cmovl esi, esi
and rdi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdi]
add bl, -93
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
add dil, 20 # instrumentation
cmovnbe rbx, rdi
and rdx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rdx]
adc dl, cl
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -93
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
test ax, 8
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], cl
setle cl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -68
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], cl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
