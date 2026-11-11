.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rbx, 99
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 24
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 0
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
xor ecx, 5
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
sub bl, -96
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 9
jmp .bb_0.1
.bb_0.1:
adc al, -103
and rdx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdx]
mov bl, cl
test sil, cl
setb dl
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
