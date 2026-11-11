.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, -83
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
cmovno rcx, rax
cmovp cx, ax
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
test al, 127
and al, -72 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
cmovz rdi, rcx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rbx]
test eax, ecx
and rsi, 86
xor dil, sil
and rax, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rax]
and dl, 116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
cmovnz rcx, rdx
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], ebx
cmovnbe cx, ax
cmovb bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
