.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 62 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 55
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
inc cl
and rsi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rsi]
sbb di, 80
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rcx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rbx]
add cl, 35 # instrumentation
sets dil
add al, 66 # instrumentation
cmovnp eax, esi
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edi
not ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
