.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rcx + rsi + 20]
and al, -23
lea rdi, qword ptr [rbx + rdx]
bt rax, rax
lea ax, qword ptr [rbx + rcx + 39]
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
or dx, 0b1000000000000000 # instrumentation
bsf cx, dx
bt rsi, rsi
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdx], esi
sbb ecx, 53
sub al, -82
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rbx]
or ecx, edi
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 63
movzx di, sil
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
