.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
or sil, bl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
or dil, -76
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 103
xor cx, -18
and dl, cl
or esi, -110
bt dx, cx
or al, -75
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and al, -114
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
