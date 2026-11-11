.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], si
inc sil
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 54
jle .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, bl
add al, -65
and rdi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
