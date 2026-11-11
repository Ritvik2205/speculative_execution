.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rcx + rax + 18]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
sbb cl, sil
lea rdi, qword ptr [rsi + rsi]
and rdi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdi]
btr ebx, edx
add dl, -10 # instrumentation
cmovns edi, esi
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
add bl, 97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rdi]
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
cmovz edi, eax
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
