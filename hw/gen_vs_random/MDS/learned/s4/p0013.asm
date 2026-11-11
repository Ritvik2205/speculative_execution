.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 41
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
xor rsi, -117
and ebx, 12
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and ax, -10351
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
test al, bl
xor rax, -843636050
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
or al, 25
and bx, 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
