.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
and di, bx
xor eax, 73
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], di
cmovnb rsi, rsi
and cl, 48 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rbx]
or cl, 10
cmovb edi, esi
cmovb ax, ax
jmp .bb_0.1
.bb_0.1:
cmovl esi, esi
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 40
cmovnl bx, si
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
bts ebx, edx
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edx
and rcx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
and dil, 26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
