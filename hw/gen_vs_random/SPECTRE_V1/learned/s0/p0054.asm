.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
cmovle rsi, rdx
and bl, 87
test ax, 636
jmp .bb_0.1
.bb_0.1:
and al, 33
adc al, dl
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 82
lea edi, qword ptr [rsi]
xor bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
