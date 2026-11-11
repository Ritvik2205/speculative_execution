.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, si
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rsi]
dec dx
cmovo cx, di
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
lea rdx, qword ptr [rax]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], cx
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
xchg bl, bl
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], ax
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
