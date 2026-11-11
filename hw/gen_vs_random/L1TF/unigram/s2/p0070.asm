.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 126 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], bx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -68
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
lea rcx, qword ptr [rax + rax + 94]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
sub dl, cl
cmp di, -98
lea dx, qword ptr [rax + rax + 34]
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
xor dil, bl
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], edi
and rax, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rax]
xor bx, 69
xor cl, cl
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
