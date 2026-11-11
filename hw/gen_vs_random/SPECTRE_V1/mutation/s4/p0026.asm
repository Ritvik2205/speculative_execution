.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdi]
lea ax, qword ptr [rdi + rcx + 51483]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], -90
and rax, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rax]
sbb cl, dl
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi], 117
or ax, 12618
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
sbb al, -127
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 54
imul al
and rdi, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rdi]
or cx, 0b1000000000000000 # instrumentation
bsr ax, cx
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
