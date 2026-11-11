.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, bl
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 88
adc rax, 1310333622
add bl, 44 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rdx
adc bx, 65
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
or dil, 80
movsx rcx, ax
or dx, dx
add edx, 50
and rdx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
cmp edx, 44
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 57
cbw
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
