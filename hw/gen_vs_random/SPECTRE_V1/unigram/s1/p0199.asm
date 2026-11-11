.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdi, rax
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
sets cl
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], sil
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
cmovnbe rdx, rdi
add dl, 47
sbb al, al
add cl, 103 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rsi]
add dl, 16 # instrumentation
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 48
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
lea rcx, qword ptr [rdx + rbx + 43]
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
