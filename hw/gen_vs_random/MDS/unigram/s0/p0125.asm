.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb ax, di
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, esi
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], si
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], di
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
bt rbx, rax
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], cx
and rbx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and bl, 56 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
btr di, di
test al, -7
cmovns edi, edx
btc rsi, rdx
and al, 20 # instrumentation
cmovp cx, dx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rdi]
test dil, dl
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
