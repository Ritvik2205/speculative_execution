.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 68
and rsi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rsi]
test ecx, -1843375753
not dl
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 105
and cx, -2
btr bx, 188
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
and di, 99
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -553694152
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 1
cmovz bx, bx
xor ebx, ebx
cmovp di, si
and rax, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rax]
test edi, -1252846009
not ebx
xor dl, dl
xor dl, -43
or cx, 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
