.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -31
sub cl, bl
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
and rbx, rdx
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
and bl, dl
cmp dil, -58
and rax, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
