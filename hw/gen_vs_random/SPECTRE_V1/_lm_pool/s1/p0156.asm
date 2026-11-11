.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
sbb bl, al
sbb al, -114
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rdi
sub bl, dl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
lea edx, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdx]
xor cl, bl
and rbx, rdi
sub al, dl
lea ebx, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
