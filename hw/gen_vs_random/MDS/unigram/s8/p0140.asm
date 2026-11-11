.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdi]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rax
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ebx
test cl, -113
and rdx, rdx
bt rsi, rcx
test dil, dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
and di, 91
test cl, 91
and rsi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rsi]
xor bl, -61
cmovl esi, ecx
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], -86
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
and al, 17 # instrumentation
cmovnp edi, ecx
and dl, 34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdx]
xor cl, cl
or rdi, 21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
