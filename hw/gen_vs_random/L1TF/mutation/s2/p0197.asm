.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rcx], eax
add cl, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], dx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
jmp .bb_0.1
.bb_0.1:
test cl, 93
add dx, si
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 4
cmovnbe bx, cx
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], sil
test al, -5
btc rcx, 81
setz bl
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ecx
cmovnl ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
