.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 32
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
xor sil, 64
jmp .bb_0.2
.bb_0.2:
sub sil, dl
and rbx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rbx]
test ebx, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
