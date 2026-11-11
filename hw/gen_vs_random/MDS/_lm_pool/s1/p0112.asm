.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, bl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
jmp .bb_0.1
.bb_0.1:
test al, cl
or ebx, esi
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
xor dil, -70
test cl, 101
or al, 25
xor cl, sil
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 18
or si, 94
or cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
