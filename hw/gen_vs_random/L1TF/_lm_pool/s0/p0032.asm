.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -104 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
or edx, ebx
and rbx, -88
or rdi, 40
jmp .bb_0.2
.bb_0.2:
and dl, 0 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rbx]
lea di, qword ptr [rcx]
jmp .bb_0.3
.bb_0.3:
test al, -56
btr dx, 6
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], dl
adc bl, -14
cmp al, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
