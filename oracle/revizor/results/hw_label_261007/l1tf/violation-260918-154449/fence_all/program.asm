.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 122 # instrumentation
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovp rdi, qword ptr [r14 + rbx] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovnb bx, word ptr [r14 + rdx] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
movsx rdi, word ptr [r14 + rdi] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
and eax, 0b111 # instrumentation
lfence
bts dword ptr [r14 + rcx], eax 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock adc word ptr [r14 + rsi], dx 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock xor byte ptr [r14 + rax], dl 
lfence
jmp .bb_0.1 
.bb_0.1:
add dx, si 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
mov dword ptr [r14 + rdi], ecx 
lfence
cmovnl ax, ax 
lfence
btc rcx, 81 
lfence
setz bl 
lfence
cmovnbe bx, cx 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock adc byte ptr [r14 + rsi], sil 
lfence
test cl, 93 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock btc dword ptr [r14 + rdx], 4 
lfence
test al, -5 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
