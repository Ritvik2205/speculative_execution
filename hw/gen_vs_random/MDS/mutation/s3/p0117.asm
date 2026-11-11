.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -53 # instrumentation
cmovbe edi, eax
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rsi
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
test bl, -14
bts rax, 77
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rdi
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rax], si
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
cmovo rbx, rbx
or dil, dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -1967998643
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
test dl, -119
or bx, dx
xor al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
