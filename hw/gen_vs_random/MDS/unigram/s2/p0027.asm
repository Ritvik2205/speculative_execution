.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], esi
xor bl, sil
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
and rdx, 31
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edi, eax
cmovs ax, bx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 37
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dl
jmp .bb_0.1
.bb_0.1:
or sil, -8
and si, dx
cmovnp rsi, rbx
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
cmovbe ax, bx
and rax, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rax]
cmovbe di, dx
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
and sil, -115 # instrumentation
cmovl ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
