.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rcx, 38
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
add al, -34 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 29
and rbx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 63
add cl, 62 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and bl, dl
lea ebx, qword ptr [rbx + rax + 56]
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
add bl, 104 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rax]
or al, bl
add dil, -7
test al, dil
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], eax
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
