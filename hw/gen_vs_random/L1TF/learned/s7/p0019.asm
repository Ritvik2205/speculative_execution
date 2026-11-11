.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, eax
test al, -70
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
and dil, dil
btr di, bx
or edi, ebx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 25
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], di
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
or rdx, 11
inc edx
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
