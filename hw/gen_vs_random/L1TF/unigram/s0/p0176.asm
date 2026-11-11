.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, 9
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 23
sbb dl, -26
add dl, -10 # instrumentation
cmovns esi, edx
and rsi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rsi]
setns dil
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 69
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
sbb ecx, 44
setp al
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], edx
and rcx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
