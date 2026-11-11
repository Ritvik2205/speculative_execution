.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, sil
bts di, ax
and rdx, 20
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and al, 4 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rsi]
or rsi, 39
xor eax, 1170472196
cmovnp eax, ebx
and rdx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
btc rdi, 6
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
btc rbx, 64
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 28
btc rsi, rbx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
or dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
