.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], edx
and ecx, eax
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
bt rsi, 238
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 5
and rbx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rcx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
and rax, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], sil
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
test cx, 401
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 36
test dil, -51
and ecx, -104
test edx, esi
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rcx], si
and rcx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
