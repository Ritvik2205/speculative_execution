.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
and dl, -98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rcx]
cmovbe bx, si
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 0
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
bts rcx, rax
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
cmovz edi, edi
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
and al, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rsi]
bts rax, 77
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], sil
or rax, rdi
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -1967998643
and dl, 60 # instrumentation
cmovnl esi, eax
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
