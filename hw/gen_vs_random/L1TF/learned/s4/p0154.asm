.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 51
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
setnbe cl
add bx, 85
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], bl
add bl, -19 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdi]
lea ecx, qword ptr [rdi + rbx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
sbb rax, -1477844571
or rbx, 14
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
