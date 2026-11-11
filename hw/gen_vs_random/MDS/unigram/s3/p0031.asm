.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 73
cmovnp edi, eax
cmovnbe rdx, rdi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], si
or bl, sil
and dx, 3
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rcx
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 99
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
jmp .bb_0.1
.bb_0.1:
xor dx, di
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
xor al, -89
or esi, -110
and rsi, 98
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
cmovnl di, dx
and dl, 18 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
