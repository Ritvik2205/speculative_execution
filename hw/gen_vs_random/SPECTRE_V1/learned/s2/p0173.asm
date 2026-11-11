.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 112 # instrumentation
adc al, bl
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
cmovle rcx, rsi
cmp bl, al
and dl, -111
jmp .bb_0.1
.bb_0.1:
and dl, dil
bswap rbx
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
and rdi, 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
