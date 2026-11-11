.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 87
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rbx]
sub al, cl
jns .bb_0.2
jmp .exit_0
.bb_0.2:
and al, al
lea bx, qword ptr [rdi + rdi + 51]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 38
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
