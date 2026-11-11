.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 74
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
xor cl, 24
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and rdx, 36
xor dl, dil
xor ax, -4010
or dl, -97
or dil, -41
btc esi, 199
xor dl, -19
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
bt si, dx
or dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
