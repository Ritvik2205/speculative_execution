.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
or di, 96
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], ebx
and dl, 97 # instrumentation
cmovnp dx, si
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rax
and rdx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdx]
cmovnbe rax, rbx
and dil, 50 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 51
cmovbe bx, di
and al, 34 # instrumentation
cmovno eax, ebx
btr edx, eax
and rax, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rbx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 45
or cl, al
btr cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
