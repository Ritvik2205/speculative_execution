.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], ebx
add dl, 47
and rsi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rsi], 9
sub al, dl
btr eax, 55
add sil, -26 # instrumentation
cmovle rax, rsi
and rax, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rax]
cmovbe rdi, rdx
or dx, di
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, bl
and rcx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rcx]
lea ebx, qword ptr [rdx]
sbb rdi, 85
movzx esi, dl
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], 69
and rax, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
