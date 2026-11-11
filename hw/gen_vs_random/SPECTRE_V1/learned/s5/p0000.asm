.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -98 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], cx
test dl, 113
or eax, -1161451853
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], bx
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx], 43
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dil
jmp .bb_0.1
.bb_0.1:
lea bx, qword ptr [rbx]
lea esi, qword ptr [rax + rsi + 66]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
