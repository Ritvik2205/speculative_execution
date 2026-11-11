.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 40 # instrumentation
btc rsi, rsi
xor dil, -37
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
xor dl, cl
mov dl, bl
or eax, -126
lea rbx, qword ptr [rdi + rdx + 3]
cmovs si, di
and rdi, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdi]
sbb dil, sil
mov dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
