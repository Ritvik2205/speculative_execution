.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -95 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
mov dl, bl
sbb bl, -88
lea rcx, qword ptr [rdx]
and eax, -409673666
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
lea rcx, qword ptr [rax + rdi]
adc al, 80
xor al, dl
sbb bl, dl
and dl, bl
bt edi, ebx
and cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
