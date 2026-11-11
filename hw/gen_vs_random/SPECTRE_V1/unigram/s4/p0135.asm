.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test esi, 28
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rcx], si
and rdi, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rdi]
or cl, cl
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
cmovl ecx, eax
cmovno edi, eax
add cl, -109 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 7
or cx, 0b1000000000000000 # instrumentation
bsf di, cx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
bt cx, di
cmp cl, sil
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
cmovp eax, ecx
xor bl, 41
lea rax, qword ptr [rbx + rdx + 6]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
