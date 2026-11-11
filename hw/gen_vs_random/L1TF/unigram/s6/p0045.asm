.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 6
movzx rax, cl
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], cl
lea edi, qword ptr [rbx + rdx + 55]
btr edi, 31
cmovbe rcx, rbx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 15
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rax]
sbb cl, dl
setl al
inc rax
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
