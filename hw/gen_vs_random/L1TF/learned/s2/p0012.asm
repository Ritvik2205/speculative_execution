.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 86 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rcx]
xor edi, 35
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], cx
or al, -57
or al, -57
sbb cl, sil
btc ax, si
and rsi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rsi]
bts edi, 53
xor sil, 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
