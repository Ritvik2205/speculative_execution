.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 5
and dil, dil
xor bl, al
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
xor al, 8
bts di, 37
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and cx, -8
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
bts ecx, 184
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
test bl, cl
test dil, -51
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
and al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
