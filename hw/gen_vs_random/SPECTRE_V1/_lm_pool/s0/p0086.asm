.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
lea bx, qword ptr [rax]
sbb al, dil
sub rsi, 97
dec di
test al, 59
and rsi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
setns dl
and al, -54
add ecx, 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
