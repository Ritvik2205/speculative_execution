.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
cmovz cx, cx
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
cmovno rcx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 62
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -52
cmovle esi, edx
and rdx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and bl, 15 # instrumentation
cmovb di, si
cmovbe ax, si
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
cmovnb rax, rsi
cmovno rsi, rdx
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
or al, -24
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], bl
jmp .bb_0.2
.bb_0.2:
and dl, 57 # instrumentation
cmovnb di, si
and rsi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
and dl, al
xor si, dx
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rbx], di
or rax, 1461812833
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edi
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rsi
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 4
btc rbx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
