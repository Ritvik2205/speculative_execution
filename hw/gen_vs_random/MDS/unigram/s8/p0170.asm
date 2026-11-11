.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, sil
test cx, 401
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
cmovbe ax, bx
xor cl, 98
cmovz di, dx
xor rsi, -117
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rcx
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdx
and dl, 48 # instrumentation
cmovz rbx, rax
test bl, bl
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
btc rdi, rax
and rsi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 25
or rdi, rax
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
