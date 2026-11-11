.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdx], ax
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rsi
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], -12
test cl, 0
cmovnz eax, edx
and dl, -58 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 48
and rdx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 77
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
jmp .bb_0.1
.bb_0.1:
bts di, bx
and dl, -26 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rsi]
btr bx, 188
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
and rdi, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
