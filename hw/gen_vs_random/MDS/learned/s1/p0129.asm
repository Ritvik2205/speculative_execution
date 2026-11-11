.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rcx]
or al, sil
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
test sil, al
xor cx, -18
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
or al, cl
xor dl, sil
xor al, -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
