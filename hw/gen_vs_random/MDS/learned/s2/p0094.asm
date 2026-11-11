.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -18
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], esi
test bl, dl
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
xor al, -19
xor di, 40
or rax, -1523798580
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], -53
xor ax, -4010
cmovnp rdx, rax
xor al, 9
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
jmp .bb_0.2
.bb_0.2:
or al, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
