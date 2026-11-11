.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rsi]
xor rsi, 76
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], 93
and rbx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], bx
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rbx
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 22
sub al, -47
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 24
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], dx
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
sub rbx, 44
cmovb di, cx
not ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
