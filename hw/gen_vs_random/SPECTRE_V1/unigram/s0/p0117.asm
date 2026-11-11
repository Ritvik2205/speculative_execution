.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rax]
or si, 0b1000000000000000 # instrumentation
bsf bx, si
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
inc dl
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], -28
lea rcx, qword ptr [rcx]
sub ax, -17837
add cl, -56 # instrumentation
sbb rdi, 12
bswap rax
xor rax, -1905683998
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
sub bl, bl
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdx], ax
xor edx, 43
add dl, 89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
