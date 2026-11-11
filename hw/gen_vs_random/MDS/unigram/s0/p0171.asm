.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
test eax, edx
and bl, -126 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rbx]
cmovnbe rax, rbx
and rcx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
cmovno eax, ebx
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
cmovz ax, ax
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
and al, -72 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edx
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edi
xor ax, ax
and rdi, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdi]
and rcx, 107
or ax, ax
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
