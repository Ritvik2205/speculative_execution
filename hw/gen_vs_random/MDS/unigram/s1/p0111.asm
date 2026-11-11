.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo ebx, edi
and rdi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rcx], cx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], esi
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
btc ecx, 11
cmovno rdx, rdx
cmovnz dx, bx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 4
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rbx
and rdx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
cmovns eax, edi
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and rsi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rsi]
or dil, 16
or bx, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
