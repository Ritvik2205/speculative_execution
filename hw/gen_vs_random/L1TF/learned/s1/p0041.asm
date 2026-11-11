.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -93 # instrumentation
xchg rbx, rax
lea rsi, qword ptr [rdx + rcx]
lea rax, qword ptr [rax + rdx]
and al, 76
lea edi, qword ptr [rdx + rdi]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], ecx
setnbe bl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 48
cmovp cx, dx
add bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
