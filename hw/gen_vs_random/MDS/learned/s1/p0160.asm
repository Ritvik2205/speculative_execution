.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and al, dl
and rsi, 70
or rax, -285849275
cmovno dx, dx
and rdx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], bx
and rax, -1909598591
or rax, 1749358813
cmovnl ebx, eax
xor cl, dil
and rbx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], edi
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
cmovp esi, esi
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 2
cmovnle rax, rdi
cmovbe ax, di
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], eax
xor rsi, 22
and dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
