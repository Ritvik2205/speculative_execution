.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz rdx, rax
cmovb cx, dx
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 29
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], dx
and rcx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 4
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rcx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
and al, -103
btr esi, ebx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -1773864540
or di, 59
and rax, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rcx
and al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
