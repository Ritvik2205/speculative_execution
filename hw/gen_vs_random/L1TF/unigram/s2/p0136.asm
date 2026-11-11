.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ebx, 57
add cl, -73 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rbx]
btr edi, 1
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dil
add al, -113 # instrumentation
mov rax, 79
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rax
xor ebx, esi
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rdi]
add dl, 77 # instrumentation
sbb edx, 68
sub rdx, 52
and rcx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rcx]
xor bl, dil
and rcx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dil
sub dil, bl
or bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
