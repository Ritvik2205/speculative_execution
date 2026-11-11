.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rcx], eax
movzx ecx, bl
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
jmp .bb_0.1
.bb_0.1:
add dx, si
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ecx
cmovnl ax, ax
btc rcx, 81
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 25
lea cx, qword ptr [rdx + rdx]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], sil
test cl, 93
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 2
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], -259018739
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
