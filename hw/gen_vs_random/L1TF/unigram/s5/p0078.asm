.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edx, qword ptr [rax]
xor bl, -5
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 25
or cl, -78
setb al
add edx, 56
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], eax
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rdx]
add bx, 48
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx], 16
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rbx]
and al, -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
