.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 40 # instrumentation
btc rdx, rdx
and ebx, 20
add al, 10
setno al
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
xor dl, 71
or edx, 77
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -3
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 19
and dl, -109
test al, 40
setns al
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], 1594154558
add cl, 0 # instrumentation
adc al, bl
or eax, 1276549484
lea esi, qword ptr [rsi + rsi + 35]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
