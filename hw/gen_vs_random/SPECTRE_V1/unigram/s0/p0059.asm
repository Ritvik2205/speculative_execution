.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edi, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rsi]
setp al
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
add dil, 87 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 83
jno .bb_0.1
jmp .exit_0
.bb_0.1:
cbw
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
cmovb rcx, rsi
bswap esi
imul rdx, rbx, 11
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 125
add al, dil
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
