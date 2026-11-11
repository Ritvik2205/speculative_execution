.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, bl
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdi
and rcx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rcx]
sbb sil, bl
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmovno si, cx
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], esi
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 51
add bl, 39 # instrumentation
cmovo edx, ebx
cmovz si, si
and ax, si
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 4
sbb di, bx
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -39
sub dil, sil
xor bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
