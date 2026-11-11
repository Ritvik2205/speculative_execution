.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdi, rdi
add al, 93
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rax], di
and rax, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rax]
dec ecx
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
sub bx, 29
and rbx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and dl, 0 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
