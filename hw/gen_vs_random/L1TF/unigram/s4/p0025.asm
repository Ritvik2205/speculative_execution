.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bswap ebx
test sil, dl
lea rcx, qword ptr [rdx + rcx + 87]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
setnp cl
btr edi, esi
adc rdi, rbx
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 45
and rsi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
movzx ax, dil
cbw
and rsi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 124
and rcx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rcx]
lea rdx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
