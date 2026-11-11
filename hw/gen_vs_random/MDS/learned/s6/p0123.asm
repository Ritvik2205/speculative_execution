.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
test rbx, 60
or cl, -77
test dil, cl
and dl, -73
and cl, dl
btc ax, si
or dil, -78
or dil, -41
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
bt dx, di
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
xor dil, -70
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
