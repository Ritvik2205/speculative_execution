.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 59 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
btc si, 43
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
test dil, -80
and al, -8 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rax]
cmovs dx, di
not cl
cmovnb rax, rdx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edi
or rsi, rdx
bts eax, 222
and bl, -123 # instrumentation
cmovnp cx, bx
bt rsi, rcx
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 59
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 99
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
