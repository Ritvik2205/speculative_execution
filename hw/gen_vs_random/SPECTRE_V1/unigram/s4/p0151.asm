.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], -27
and dil, 98
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdi]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
or dil, 98
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
bt esi, 52
sbb ax, dx
adc bl, -76
adc ax, di
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
sub dil, dil
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
