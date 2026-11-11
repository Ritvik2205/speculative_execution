.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 6
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 1
and rax, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and dil, sil
and rax, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rbx]
cmovnp cx, dx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 42
xor ax, dx
and rax, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rax]
btc cx, 104
and al, bl
xor cl, 122
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rdx
and dl, -33 # instrumentation
cmovns rdi, rdi
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
