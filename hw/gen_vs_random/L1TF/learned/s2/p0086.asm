.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], eax
sbb bl, dil
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
add cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
