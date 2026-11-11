.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdx]
and bl, bl
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rax], si
or cl, 119
cmovno rdx, rdx
and dl, 84 # instrumentation
cmovle cx, bx
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], -102
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
and bl, 96 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], si
cmovnp ecx, eax
cmovno rax, rdx
not rdx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
btc cx, di
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
bts ebx, ecx
and dil, 47 # instrumentation
cmovnp edi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
