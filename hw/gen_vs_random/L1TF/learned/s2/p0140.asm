.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 15 # instrumentation
cmovb edi, edi
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
dec bl
lea rcx, qword ptr [rbx + rsi + 4951]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -702719947
test al, bl
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
add al, -21 # instrumentation
mov edi, esi
and rbx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
sbb bl, -62
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add cl, -84 # instrumentation
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 41
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dl
xor cl, al
cmovns eax, eax
not dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
