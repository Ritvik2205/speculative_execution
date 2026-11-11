.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx rbx, dl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], edi
and rbx, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 14
and rbx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 1
and rcx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rcx]
cmp rdx, rax
adc dx, 93
and rdx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ecx
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 59
and rbx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rbx]
add dl, 89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
