.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -36 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], ebx
test bl, -8
mov bl, al
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
add cl, bl
lea di, qword ptr [rax + rcx + 89]
cmovle rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
