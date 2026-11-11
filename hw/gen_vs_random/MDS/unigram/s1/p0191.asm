.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts cx, di
bt eax, edx
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
bts esi, edx
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
cmovnb rax, rdx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 39
cmovno dx, di
and rdi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdi]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -106
cmovs rdi, rcx
cmovno dx, di
cmovno si, di
cmovno esi, edi
or rsi, 32
and rax, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
or si, 0b1000000000000000 # instrumentation
bsf si, si
cmovnz rax, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
