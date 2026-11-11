.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, edx
sbb al, sil
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
xor al, dl
test al, -84
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], bl
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
bswap rdx
bts eax, 232
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
