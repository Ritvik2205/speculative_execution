.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx]
sub dil, -32
xor cl, bl
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ecx
or rdx, 92
xor bl, cl
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 69
cmp cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
