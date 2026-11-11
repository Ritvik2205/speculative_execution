.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -119
or ax, 0b1000000000000000 # instrumentation
bsr ax, ax
and dl, -107 # instrumentation
cmovz rdx, rsi
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 55
cmovl rdx, rcx
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
test edx, 13
and rdx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rdx]
btr rax, rax
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
jmp .bb_0.1
.bb_0.1:
cmovo rax, rdx
cmovnl ax, di
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ecx
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
test al, dl
and sil, bl
and dil, 75
test cl, dl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 57
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rbx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
