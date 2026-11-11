.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -36 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], eax
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
lea ebx, qword ptr [rdx]
lea ax, qword ptr [rdx + rcx + 80]
and al, -68
test rcx, rdx
inc al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
