.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
mul rcx
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
lea rsi, qword ptr [rbx + rcx]
xor dil, al
and al, -68
add dil, dl
btc edx, 74
add sil, -61
cmovle rsi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
