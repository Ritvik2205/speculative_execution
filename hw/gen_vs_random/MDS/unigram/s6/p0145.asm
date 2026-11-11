.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rax, 209
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdx]
or bl, -52
test rsi, rbx
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
or bl, al
and rax, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rax]
btc rdx, rdi
or ebx, -15
and sil, sil
or al, cl
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 91
btc rax, rax
bts di, 37
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
cmovnp rdx, rdx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
xor rdi, -9
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
