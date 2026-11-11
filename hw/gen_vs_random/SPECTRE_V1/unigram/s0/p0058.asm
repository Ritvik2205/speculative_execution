.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, al
cmovnb ax, si
add dil, cl
add bl, 45 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
adc dl, dil
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 27
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 85
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
js .bb_0.1
jmp .exit_0
.bb_0.1:
mov bl, 59
add dil, 28 # instrumentation
setnz dil
xchg dx, cx
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdi]
sub eax, -518999763
cmovb ebx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
