.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 84 # instrumentation
btc bx, bx
btr esi, 174
add al, 27 # instrumentation
sbb ecx, esi
and rdx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], edx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdx
and rbx, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rbx]
add dl, cl
dec bl
adc al, 36
and rcx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
