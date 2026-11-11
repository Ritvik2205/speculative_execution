.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdi
cmovno rdi, rdi
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 9
cmovbe di, bx
not rsi
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
bt bx, 253
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
and al, 50 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 105
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
and cl, -6
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
xor di, -83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
