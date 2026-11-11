.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
and rdi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdi]
xor bl, sil
test edi, -1252846009
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 23
and cl, -19
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
jmp .bb_0.1
.bb_0.1:
btr bx, di
xor rax, -1499464454
not cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
xor al, -89
and rdi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdi]
or al, 54
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
