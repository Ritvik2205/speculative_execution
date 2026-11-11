.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
xor cl, 24
or dl, 85
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
cmovbe rdx, rbx
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
cmovp ecx, ecx
btc rbx, rdx
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rdx
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 21
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
test ebx, edi
and rax, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
not edx
test di, si
and cl, 114 # instrumentation
cmovz si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
