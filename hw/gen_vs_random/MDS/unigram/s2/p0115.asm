.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno ax, ax
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], -32
and cl, 91 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rcx]
test bl, -114
jmp .bb_0.1
.bb_0.1:
cmovl eax, eax
and cl, cl
and bl, 56 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 4
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
and dl, 0 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
or bx, 0b1000000000000000 # instrumentation
bsr si, bx
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 107
and dl, -15 # instrumentation
cmovnp dx, dx
and rdi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rdi]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rcx
test cl, cl
test ecx, -1843375753
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
