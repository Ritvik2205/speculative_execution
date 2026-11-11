.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dil, cl
cmovnz di, cx
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dl
and cl, bl
add dl, 47
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
lea rdx, qword ptr [rbx]
sub al, bl
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
jl .bb_0.2
jmp .exit_0
.bb_0.2:
test cl, -33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
