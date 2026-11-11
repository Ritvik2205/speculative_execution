.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, bl
add cl, -95 # instrumentation
lea cx, qword ptr [rax + rax + 77]
test cl, -120
cmovnbe cx, dx
mov cl, -72
js .bb_0.1
jmp .exit_0
.bb_0.1:
sbb cl, bl
imul rsi, rdi
test al, 42
and rsi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
mul al
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], ecx
add dl, -95 # instrumentation
lea dx, qword ptr [rcx + rcx + 49]
sub dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
