.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
lea rdi, qword ptr [rcx]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rcx]
sub al, bl
jmp .bb_0.2
.bb_0.2:
add dl, -56 # instrumentation
cmovs rdi, rsi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and bl, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
