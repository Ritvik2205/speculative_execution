.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
sbb dl, 127
or cl, dl
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
lea eax, qword ptr [rdx]
and sil, dl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
test dl, 113
and rdi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdi]
sub al, cl
and rdi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdi]
xchg ecx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
