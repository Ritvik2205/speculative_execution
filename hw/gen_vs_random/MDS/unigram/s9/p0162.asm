.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr di, 89
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rdi]
xor rdi, -9
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], dx
and bl, -123 # instrumentation
cmovnp ax, dx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], si
and sil, -40 # instrumentation
cmovle bx, si
and di, 99
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rbx
test bl, dil
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
xor dl, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
