.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], edx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rdi
test al, sil
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -103
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rcx
and bl, -89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
test rsi, 82
jmp .bb_0.1
.bb_0.1:
and dl, -34 # instrumentation
cmovs rbx, rdx
cmovz cx, bx
cmovle si, cx
and bl, -128 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rax
or bl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdx]
or cl, 39
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
bts edx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
