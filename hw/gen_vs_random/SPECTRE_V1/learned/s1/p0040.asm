.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], -86
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dl
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, -72
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
jns .bb_0.2
jmp .exit_0
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
sub sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
