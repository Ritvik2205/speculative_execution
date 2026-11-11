.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edi
btc rbx, rdi
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 4
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rsi
and rsi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rsi]
xor si, dx
and dl, al
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rbx], di
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
and dl, 57 # instrumentation
cmovnb di, si
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
or rax, -1561934807
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
