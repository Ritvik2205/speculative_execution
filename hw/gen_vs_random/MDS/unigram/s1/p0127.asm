.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 7
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
test dl, bl
and cl, 34 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
and rbx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and edx, -44
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rax
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and dl, -19 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
test edx, -372470678
test rsi, 26
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
and cl, -8 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
