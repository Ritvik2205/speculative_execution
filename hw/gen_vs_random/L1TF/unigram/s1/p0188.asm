.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rbx, rcx
or di, 0b1000000000000000 # instrumentation
bsf si, di
lea ax, qword ptr [rdi + rax + 75]
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rsi
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], cx
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -87
lea edx, qword ptr [rcx + rdx]
cmovnle dx, dx
and rdi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdi]
lea eax, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rcx], 76
sbb rdx, 98
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
