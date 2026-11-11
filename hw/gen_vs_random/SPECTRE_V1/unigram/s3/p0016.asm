.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], di
test rdx, 1657596343
sbb dl, 127
or ebx, eax
and rdx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdx]
cmp ebx, -33
sbb si, di
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rdx
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rax
dec al
add rdx, 95
add al, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rsi]
not bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
