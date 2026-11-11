.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], edi
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rdx], dx
btc ebx, eax
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
bt edi, 225
and dl, 125 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rcx]
and bl, 65 # instrumentation
cmovnbe di, cx
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
jmp .bb_0.1
.bb_0.1:
bt edi, edx
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rsi
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
bt ax, 76
and rcx, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rcx]
and rsi, rsi
and sil, al
and rax, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
