.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, ebx
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 68
cmp ax, 24210
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
or bl, dl
sbb dil, bl
or dil, al
adc al, -61
mov cl, 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
