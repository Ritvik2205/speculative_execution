.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 63
cmp al, sil
add rax, 6
and cl, dl
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -1157135998
add ecx, 84
and al, cl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
