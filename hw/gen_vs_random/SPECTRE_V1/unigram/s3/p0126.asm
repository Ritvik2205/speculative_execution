.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -108
lea bx, qword ptr [rax + rdi + 64]
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
add cl, 11 # instrumentation
cmovns edx, edi
sbb al, al
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], bx
xor ecx, edi
and rdx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rdx]
cmovbe rdx, rbx
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
cmovnp si, si
and rcx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
