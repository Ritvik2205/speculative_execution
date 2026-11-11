.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 50
cmovb si, ax
and rsi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rsi]
xor cl, 24
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
or rdi, -11
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
cmovz cx, ax
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 71
cmovl rax, rax
and rsi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rcx]
or ebx, ecx
cmovb ebx, esi
and dil, -34 # instrumentation
cmovs rsi, rdi
and edx, -44
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -48
cmovnb dx, si
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rcx
btc rax, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
