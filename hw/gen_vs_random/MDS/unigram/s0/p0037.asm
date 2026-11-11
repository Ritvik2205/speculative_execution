.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz di, cx
xor sil, cl
cmovp ax, cx
cmovnbe dx, ax
cmovz ax, bx
or rcx, rsi
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 48
cmovnz rcx, rax
and rdi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rdi]
test dl, cl
or dx, dx
and rsi, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rsi]
cmovz ecx, edx
and rsi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rsi]
or rcx, -17
and bl, 53 # instrumentation
cmovnl rbx, rbx
and rdx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rdx]
xor rdx, -59
test al, al
and rcx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
