.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, bx
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
and cl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 42
test cl, 96
and bx, dx
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdx], eax
cmovo eax, edi
and rdx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdx]
xor rdi, -50
xor edi, 38
or di, cx
cmovs bx, cx
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
and ax, cx
and rdx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdx]
cmovo di, di
and rax, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
