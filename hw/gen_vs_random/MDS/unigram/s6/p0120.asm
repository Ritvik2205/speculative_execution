.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
and rdi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdi]
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
btc rsi, rcx
cmovns rsi, rsi
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rax
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
and rdi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdi]
btr edx, esi
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], eax
and rcx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rcx]
and dl, 116 # instrumentation
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rdi], cx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
xor sil, al
and dl, -73
and bx, 48
and al, -68 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
