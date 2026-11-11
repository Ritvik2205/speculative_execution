.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], edi
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and cl, sil
sub rdi, 84
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
inc dl
lea edx, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
sub al, bl
lea edx, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
