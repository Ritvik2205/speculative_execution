.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ax, di
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
sub sil, al
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 109
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
add cl, 71 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], bx
btr rax, 67
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 53
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 6
or cx, 0b1000000000000000 # instrumentation
bsf bx, cx
lea rdx, qword ptr [rcx + rdx]
and rax, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rax]
xchg bl, al
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
