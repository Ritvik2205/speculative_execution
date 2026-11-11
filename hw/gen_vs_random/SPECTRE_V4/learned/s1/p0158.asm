.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dl
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
cmp al, -78
adc al, -59
or bl, cl
cmovbe di, cx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
and al, 75
xor dl, -123
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
