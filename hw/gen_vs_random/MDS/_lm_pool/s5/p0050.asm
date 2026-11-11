.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 19740
bts rsi, rdi
or al, 30
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
and bl, 68
xor sil, -46
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
test rcx, -613256812
and cl, cl
test rcx, -613256812
test bl, -14
xor rsi, -117
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
test rax, -708244380
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
