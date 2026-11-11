.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ecx
xor dil, al
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rcx
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
cmovo rax, rdx
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], si
and dl, -14 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdx]
and dl, -26 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
btc edx, ebx
xor al, sil
test ebx, esi
cmovle edi, esi
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
and rax, rax
not rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
