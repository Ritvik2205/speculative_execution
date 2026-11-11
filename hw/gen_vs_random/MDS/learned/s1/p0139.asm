.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
or bl, dil
xor cx, -18
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
xor rax, -843636050
jmp .bb_0.3
.bb_0.3:
test sil, 41
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 92
jmp .bb_0.4
.bb_0.4:
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
test dl, -85
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
