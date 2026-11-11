.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs cx, bx
add al, -13
not dil
adc edx, 48
add cl, -56 # instrumentation
sbb rcx, 79
xor rdx, 81
xor al, -74
cmovno cx, cx
not al
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], ecx
neg cl
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], cl
and al, -54
btr ax, si
add cl, -93 # instrumentation
not rdx
cmovnbe ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
