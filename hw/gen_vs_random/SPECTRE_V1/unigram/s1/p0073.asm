.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 25
and rsi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rsi]
adc bl, bl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 125
test rdx, rax
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
and rbx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rbx]
xchg cx, bx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
setnp dl
and rbx, rax
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
lea cx, qword ptr [rbx]
cmovbe rbx, rcx
lea rcx, qword ptr [rbx + rsi]
sub al, -1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
