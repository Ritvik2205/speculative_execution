.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 4 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], ax
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], ebx
test al, -84
imul bx, si, -58
imul sil
add dl, 28 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
mul edi
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
imul edx, edx, 31
cmp cx, di
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rdi
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
setbe cl
setz bl
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
