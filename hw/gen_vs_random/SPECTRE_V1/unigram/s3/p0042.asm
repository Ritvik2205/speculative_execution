.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub ax, -16648
test dl, -36
test al, dl
sub dil, sil
or cx, ax
sub al, -82
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
lea eax, qword ptr [rdx + rax]
and rdi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -97
cmovnbe rbx, rcx
or rbx, rsi
cmovp bx, bx
add dl, 59 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
lea edx, qword ptr [rsi + rax + 97]
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], cx
sub al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
