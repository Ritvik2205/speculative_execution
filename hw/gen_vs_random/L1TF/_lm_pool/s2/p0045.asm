.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rax]
and dl, 32
sbb dl, cl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
sub cl, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
