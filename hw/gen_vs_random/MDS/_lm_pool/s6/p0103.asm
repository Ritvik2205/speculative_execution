.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
bt ax, di
jmp .bb_0.2
.bb_0.2:
bts rbx, rsi
and al, bl
and cx, -8
test dil, -51
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
test dil, dl
or al, -61
and al, 14
or al, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
