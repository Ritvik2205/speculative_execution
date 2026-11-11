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
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], dx
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rcx], eax
and rdi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
cmovnl ax, ax
add dx, si
cmovnbe bx, cx
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], sil
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ecx
btc rcx, 81
test cl, 93
setz bl
test al, -5
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
