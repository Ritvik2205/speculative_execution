.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, bl
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rbx
cmovno ecx, edi
cmovs eax, edi
cmovz rax, rbx
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], esi
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edi
cmovnle ebx, edx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
xor dl, dl
bts ebx, edi
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
and dl, -107 # instrumentation
cmovz rdi, rbx
cmovnl si, dx
and rbx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 45
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
