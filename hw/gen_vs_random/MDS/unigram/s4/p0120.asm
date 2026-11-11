.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 105
and cx, -2
btr bx, 188
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
and di, 99
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -553694152
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 2
cmovz bx, bx
xor ebx, ebx
cmovp di, si
and rax, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rax]
test edi, -1252846009
not ebx
xor dl, dl
xor dl, 34
or cx, 49
and cl, -49 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
or bl, 43
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
