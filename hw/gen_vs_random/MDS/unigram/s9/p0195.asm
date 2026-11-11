.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 24
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
and bl, 108 # instrumentation
cmovns rdi, rdi
cmovb rax, rdi
and dl, 119 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdx]
xor rbx, 89
and dl, sil
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], edi
xor cl, dl
and bl, -99 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
or di, 0b1000000000000000 # instrumentation
bsf ax, di
cmovno rax, rax
btr esi, edx
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
btc bx, bx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
cmovl ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
