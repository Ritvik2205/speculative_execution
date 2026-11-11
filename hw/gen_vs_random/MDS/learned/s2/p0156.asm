.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -1 # instrumentation
cmovnb cx, bx
and dl, cl
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 56
and rsi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rsi]
not edi
adc cl, dl
bt esi, 4
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 0
xor dl, al
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
cmovle esi, ebx
and ax, 30884
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
or sil, cl
mul al
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
cmovbe dx, dx
cmovz di, ax
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rcx
test rax, 1732677821
cmovle rbx, rcx
and rbx, 35
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
