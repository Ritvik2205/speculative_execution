.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
and bl, -83 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdi]
btc rcx, rcx
and rdi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdi]
bts rbx, rdi
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -38
cmovle rdx, rbx
bt eax, ecx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 9
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdi
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 80
and dl, dil
bts rax, rsi
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
