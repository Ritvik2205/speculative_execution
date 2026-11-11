.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb cl, dl
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rdx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
add cl, 22 # instrumentation
cmovns rbx, rax
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], ebx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp ecx, edi
xchg dl, sil
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], cx
add dl, dil
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], eax
cmovl ax, cx
adc bl, 70
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 50
lea edx, qword ptr [rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
