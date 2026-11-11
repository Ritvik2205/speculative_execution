.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -8
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 4
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1987381845
cmovns rsi, rbx
cmovnb bx, bx
jmp .bb_0.1
.bb_0.1:
mov al, al
or rax, -285849275
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 85
and rdi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdi]
or dl, -18
and rdx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdx]
bts rax, 117
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 287872877
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
or rax, 1749358813
and sil, 65
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 18
cmovo rbx, rsi
and al, 126
test dil, -72
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
