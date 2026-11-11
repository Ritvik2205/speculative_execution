.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg rdx
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 69
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 121
and rbx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rbx]
not rdx
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], esi
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and si, di
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], bl
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
dec rdx
lea rax, qword ptr [rax + rdi]
sub dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
