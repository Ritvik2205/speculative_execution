.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdx, rdx
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
sub cl, 86
xor rcx, 89
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
lea di, qword ptr [rdi]
test dil, bl
mov al, cl
add sil, -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
