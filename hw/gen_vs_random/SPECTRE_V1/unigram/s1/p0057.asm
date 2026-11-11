.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul ebx, eax
xor bx, 47
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
xor rcx, rdx
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 81
and rax, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rax]
add dl, -98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], ax
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
sbb bl, cl
sbb dil, -93
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
movsx rdi, bx
sub bl, -19
add bl, -5 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
test al, 48
add dl, 38 # instrumentation
setp cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
