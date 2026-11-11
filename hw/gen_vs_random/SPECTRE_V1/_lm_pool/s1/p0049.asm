.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub sil, -18
add al, -72
jle .bb_0.1
jmp .exit_0
.bb_0.1:
xor al, -119
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
and al, dl
and rbx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rbx]
sub cl, -47
cmp sil, 25
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
or al, 19
sub al, -66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
