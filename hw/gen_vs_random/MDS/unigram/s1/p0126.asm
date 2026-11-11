.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns ebx, ecx
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
or cl, bl
bts di, si
test al, sil
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 74
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and dl, 110 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rsi]
cmovo rcx, rdx
and rax, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 4
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 19
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -116
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rbx
and rdi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdi]
cmovo eax, ecx
or rsi, 64
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 1
bts ecx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
