.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 26
xor al, 9
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
or rdx, -109
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
xor sil, -126
test dil, cl
jmp .bb_0.2
.bb_0.2:
xor dl, -19
test sil, sil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 6
and rdi, 95
and rax, -978188247
bts cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
