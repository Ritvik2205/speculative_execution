.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rbx]
or rax, 699028911
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], si
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
cmovnp ax, cx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdi]
lea cx, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 124
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], di
and rdx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
setz dl
cmovns rdx, rcx
xor di, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
