.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdx]
or eax, edx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 93
test ebx, -2015966884
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
test rax, -708244380
not dl
test rdx, 27
or rax, 52
and dil, dil
bt cx, si
sub al, 32
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
