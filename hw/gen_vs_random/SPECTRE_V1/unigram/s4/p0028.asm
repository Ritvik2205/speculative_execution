.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 13
and rbx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 9
not dl
add dil, -95 # instrumentation
lea di, qword ptr [rax + rax + 84]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -26
sub dx, -23
and rdi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdi]
cmp ecx, 87
or sil, 122
cmovnbe rax, rcx
jo .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 47
add dil, -125 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdx]
seto dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
