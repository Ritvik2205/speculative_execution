.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -78 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
and rsi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rsi]
xor edi, 74
xor al, al
and rbx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and cl, 127
jmp .bb_0.1
.bb_0.1:
btr di, 109
and rdi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdi]
cmovp rbx, rcx
or ax, -4635
and rax, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rax]
bts edi, 46
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
or dl, dl
and bl, 90
test dl, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
