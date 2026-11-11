.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 73
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdi]
lea eax, qword ptr [rbx]
and dl, 32
cmovb di, bx
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 68
sub si, -105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
