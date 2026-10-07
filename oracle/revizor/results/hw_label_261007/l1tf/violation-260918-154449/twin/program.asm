.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
lfence
cmovp rdi, qword ptr [r14 + rbx] 
and rdx, 0b1111111111111 # instrumentation
lfence
cmovnb bx, word ptr [r14 + rdx] 
and rdi, 0b1111111111111 # instrumentation
lfence
movsx rdi, word ptr [r14 + rdi] 
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
lfence
bts dword ptr [r14 + rcx], eax 
and rsi, 0b1111111111000 # instrumentation
lfence
lock adc word ptr [r14 + rsi], dx 
and rax, 0b1111111111000 # instrumentation
lfence
lock xor byte ptr [r14 + rax], dl 
jmp .bb_0.1 
.bb_0.1:
add dx, si 
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ecx 
cmovnl ax, ax 
btc rcx, 81 
setz bl 
cmovnbe bx, cx 
and rsi, 0b1111111111000 # instrumentation
lfence
lock adc byte ptr [r14 + rsi], sil 
test cl, 93 
and rdx, 0b1111111111000 # instrumentation
lfence
lock btc dword ptr [r14 + rdx], 4 
test al, -5 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
