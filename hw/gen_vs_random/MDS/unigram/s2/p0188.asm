.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edx
and di, 99
test dl, dl
xor dil, -3
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rsi], bx
test bl, -9
and rcx, 107
or dil, 16
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
or sil, al
bt rdx, rdx
and cx, -2
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 70
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rax]
or rbx, rdx
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
cmovz ebx, ecx
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], -77
xor bx, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
