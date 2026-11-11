.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], dx
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rcx], eax
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
add cl, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
cmovnbe bx, cx
btc rcx, 81
setz bl
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ecx
test cl, 93
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 4
cmovnl ax, ax
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], sil
add dx, si
test al, -5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
