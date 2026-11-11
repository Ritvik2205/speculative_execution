.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb rcx, rax
and rsi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rdi
adc ax, dx
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 25
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -98 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], ebx
and bl, bl
adc bx, 4
add bl, 88 # instrumentation
sbb bl, 7
sub al, dil
and rcx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rcx]
add sil, 89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
