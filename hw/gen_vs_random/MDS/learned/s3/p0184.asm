.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -103 # instrumentation
cmovbe si, si
and rbx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rbx]
xor bx, 51
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
test bl, dil
test cl, dil
and ax, 29207
jmp .bb_0.1
.bb_0.1:
or cl, 119
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
cmovle bx, cx
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
xor al, 8
xor dil, dl
btr esi, 86
not sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
