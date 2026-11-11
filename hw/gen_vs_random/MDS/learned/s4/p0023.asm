.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
test al, dil
and rdx, 92
xor bl, -102
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
bt si, 23
xor dil, -5
jmp .bb_0.2
.bb_0.2:
cmovnp rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
