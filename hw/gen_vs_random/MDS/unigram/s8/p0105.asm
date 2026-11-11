.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rsi
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 82
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
and al, -116 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rax]
cmovz edi, ebx
or sil, dil
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], sil
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rax], eax
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 6
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 82
and rdi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
and rdi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
