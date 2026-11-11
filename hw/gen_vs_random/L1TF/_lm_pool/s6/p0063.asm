.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, ecx
adc sil, 29
inc dil
xor cl, dl
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
inc cl
add sil, dl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
and bl, 89
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
cmp bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
