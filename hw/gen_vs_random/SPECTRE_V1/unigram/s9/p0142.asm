.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec rax
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], 99
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 27
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
add bx, -65
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 50
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1164392837
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rsi]
cwd
lea si, qword ptr [rcx + rdi + 29]
sbb al, 118
setp dil
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
