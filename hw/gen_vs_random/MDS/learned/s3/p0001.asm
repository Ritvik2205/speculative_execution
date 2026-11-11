.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, di
bts rcx, rax
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 19
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
xor bx, 92
xor bl, dl
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
or cl, -77
xor cl, dl
jmp .bb_0.1
.bb_0.1:
or al, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
