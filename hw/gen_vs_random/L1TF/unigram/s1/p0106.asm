.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg eax, esi
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], esi
or ebx, eax
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
add bl, 98 # instrumentation
inc bl
cmp bl, 123
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], cx
and cl, 85
and rdx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rcx], rdx
add al, al
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
