.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
and rdx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdx]
sub cl, 86
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 74
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx], 72
add al, dl
jmp .bb_0.1
.bb_0.1:
xor rsi, rax
or al, -2
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
