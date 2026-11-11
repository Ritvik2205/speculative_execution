.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, 0b1000000000000000 # instrumentation
bsf di, ax
xor edx, edi
cmp rdx, -19
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 22
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], -30
add dl, 91 # instrumentation
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rcx
and rcx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rcx]
lea rbx, qword ptr [rsi]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rcx]
add al, 43 # instrumentation
and rax, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rax]
lea dx, qword ptr [rax + rcx + 85]
dec cl
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
sbb al, -112
adc al, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
