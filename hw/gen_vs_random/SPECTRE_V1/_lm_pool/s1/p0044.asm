.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 67 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
lea rcx, qword ptr [rdi + rbx + 34]
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
adc bl, -76
cmp al, bl
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 4
cmp rcx, 3
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
inc al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
