.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdx]
cmovo ebx, eax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
and rax, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rcx], ax
or si, 0b1000000000000000 # instrumentation
bsf bx, si
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], -102
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
or rdi, rdx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdi]
or cx, cx
cmovno rbx, rbx
and rdi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rdi
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 91
test di, 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
