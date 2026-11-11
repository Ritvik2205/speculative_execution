.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
sub cl, bl
bt si, 65
add dl, al
and dl, dil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
add al, 56
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], -28668
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
