.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
and bl, 66 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdi]
cmovnz edi, ecx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 33
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 9
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], edi
and eax, 561041355
and cl, 52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 81
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 78
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], cx
and sil, -9
test rdi, rdi
and rdx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdx]
and bl, 120 # instrumentation
cmovnle edi, edi
and ecx, -104
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rsi
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
