.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 1713273566
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], si
add bl, 86 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rbx]
sub bl, al
add rcx, 23
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and bl, 124
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdi]
or dx, dx
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], bl
inc rax
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
lea dx, qword ptr [rbx + rdx + 56387]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
