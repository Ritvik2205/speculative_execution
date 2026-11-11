.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -98 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], dx
cmp rax, 1189904463
xor al, dl
or bl, 5
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al
add edx, 24
test al, -99
and cl, al
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], 57
setnle cl
cmovs ax, cx
lea ax, qword ptr [rdx + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
