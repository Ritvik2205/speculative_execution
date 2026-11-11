.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs dx, bx
jmp .bb_0.1
.bb_0.1:
or al, dil
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
btc rdi, 221
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and si, -121
and cl, cl
and bl, 68
or al, -24
test rdx, 56
and cx, -8
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -65
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
or ax, -4210
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
