.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -71
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and dl, -73
or bx, 49
btr ecx, ebx
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
or al, -75
jmp .bb_0.1
.bb_0.1:
or dx, 125
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
xor sil, dil
jmp .bb_0.2
.bb_0.2:
test ebx, -2015966884
and rax, 627810357
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
