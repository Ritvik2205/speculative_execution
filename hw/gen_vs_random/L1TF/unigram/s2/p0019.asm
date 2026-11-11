.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 7
and rdi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dl
lea si, qword ptr [rdi + rsi + 70]
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
cmp ax, si
cmovns rax, rdx
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdx
and rdx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdx]
or rcx, 54
and rsi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rsi]
sbb sil, sil
dec dil
and rbx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rbx]
mov edi, 2036069402
and rdx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
