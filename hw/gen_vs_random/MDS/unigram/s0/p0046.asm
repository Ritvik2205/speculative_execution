.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, al
and rax, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rax]
cmovnle cx, di
cmovb di, si
or dl, -21
and dl, 93 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 0
and cx, -8
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], 113
bts edx, eax
test rdi, 2
cmovl rcx, rsi
test esi, 1857129931
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 94
and sil, sil
and bx, 30
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
bt cx, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
