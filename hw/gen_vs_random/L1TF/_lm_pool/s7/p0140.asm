.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 104 # instrumentation
mov eax, 53
lea si, qword ptr [rsi + rdi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
xor dl, 19
jmp .bb_0.1
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and dl, 0 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rbx]
cmp bl, bl
and rdi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdi]
sub si, -105
xor ax, 22976
cmp dl, -56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
