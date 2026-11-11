.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -36 # instrumentation
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], ebx
xor al, al
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
sbb dl, dil
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
test cl, 87
jmp .bb_0.3
.bb_0.3:
or dil, sil
and al, -68
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
