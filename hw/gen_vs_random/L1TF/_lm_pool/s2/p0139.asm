.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 23
xor si, -50
add cl, 88
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 47
add dl, -70
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
sub dl, -49
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
sub rax, -1628299544
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
