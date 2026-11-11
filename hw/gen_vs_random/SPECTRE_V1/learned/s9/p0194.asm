.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
xor dl, dil
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
test al, 59
lea bx, qword ptr [rsi]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, -1128038253
lea cx, qword ptr [rbx + rax + 7]
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rbx]
lea rcx, qword ptr [rsi]
jl .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
