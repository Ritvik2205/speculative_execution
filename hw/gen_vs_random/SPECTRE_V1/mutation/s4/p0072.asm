.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
add rcx, 23
and rax, -1128038253
add bl, 86 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rbx]
sub bl, al
and bl, -43
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], si
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
and rdi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
inc rax
or dx, dx
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], bl
lea dx, qword ptr [rbx + rdx + 56387]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
