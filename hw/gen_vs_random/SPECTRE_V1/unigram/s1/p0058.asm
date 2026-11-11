.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
and rdi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rsi]
sbb bl, 79
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
test di, 52
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
add cl, -26 # instrumentation
adc ebx, ecx
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
adc bl, 70
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
adc cl, dil
sbb cl, -122
cmovl bx, dx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 1
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
