.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc edi
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rax]
or bx, 90
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], si
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 70
and cl, 65
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rcx
and rsi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rsi]
lea ebx, qword ptr [rdx + rbx + 46]
xchg esi, edx
lea rdi, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
cmovnp dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
