.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dl
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 69
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
or al, 54
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], ax
movsx bx, sil
and rdx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdx]
add al, -122 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 0
lea rax, qword ptr [rdi]
add dl, -105 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rax]
test cl, -31
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 50
and dil, 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
