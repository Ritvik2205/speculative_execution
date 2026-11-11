.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, 110
not dl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rbx]
cmovnbe edx, eax
test al, cl
and cl, 79
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 30
test edi, eax
and rcx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 71
btr rax, 56
xor ecx, 8
and rdi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rcx]
test sil, al
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
and dl, 97 # instrumentation
cmovnp cx, dx
and dil, -48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
