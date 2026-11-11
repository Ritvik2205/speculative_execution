.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
cmovnb rdx, rcx
and rsi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
sbb bl, -88
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], di
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
or al, -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
