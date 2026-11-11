.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
bt ax, di
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -60
and cl, 91 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rcx]
cmovz rdx, rdx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], -23
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
cmovbe dx, bx
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
bts ax, 22
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], cx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], edi
and rbx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rbx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ecx
or cx, 0b1000000000000000 # instrumentation
bsr cx, cx
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rax
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
