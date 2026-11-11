.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, 984871847
xor al, 115
test al, bl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
test rdi, 53
xor dil, al
test cl, bl
or al, 74
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
and al, bl
or al, 24
test rdx, 2
jmp .bb_0.1
.bb_0.1:
xor al, 99
or cl, 119
cmovnp rdx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
