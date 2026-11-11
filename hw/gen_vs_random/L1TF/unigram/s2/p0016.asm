.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not rdi
and rsi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rcx]
setnz bl
lea ax, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 9
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], 109
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], cl
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
imul bx, ax, 7
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rdi
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
mov cl, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
