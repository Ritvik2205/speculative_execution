.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
movzx ebx, sil
sub bl, 2
cmp cl, dl
btr esi, edi
cmp bl, 65
lea rdx, qword ptr [rdx + rbx + 7]
jmp .bb_0.1
.bb_0.1:
sbb bl, dl
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], 93
cmovbe eax, edx
adc rbx, 75
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], 9
xor ecx, eax
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
