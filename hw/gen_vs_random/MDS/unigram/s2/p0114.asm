.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], -92
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
test bl, -9
and rbx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
bt rdi, rdx
bt di, dx
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rax
btc rsi, 80
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
bts bx, 3
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
or cl, al
and rdi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdi]
bts cx, 177
test ax, 6113
and bl, 120 # instrumentation
cmovnle edi, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
