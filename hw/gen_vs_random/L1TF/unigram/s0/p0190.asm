.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc al, sil
sbb cx, 94
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 46
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 4
and rdx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rax
adc bl, bl
sub dl, -78
not eax
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], esi
and rbx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rbx]
sbb ax, bx
and rbx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 92
add bl, 108 # instrumentation
setl bl
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
