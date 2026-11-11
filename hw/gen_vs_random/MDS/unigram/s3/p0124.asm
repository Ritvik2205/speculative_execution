.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
and cl, 8 # instrumentation
cmovnl rax, rsi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 57
cmovnl ebx, ebx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], si
test dl, cl
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rax
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
bts rsi, 205
jmp .bb_0.1
.bb_0.1:
test cl, 0
or cl, cl
cmovp rdx, rcx
btc eax, 40
or dl, sil
cmovnp ax, si
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], ax
and rcx, rcx
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
