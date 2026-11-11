.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 12 # instrumentation
cmovnb eax, ecx
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], -24
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
lea esi, qword ptr [rbx + rdi]
inc rcx
and rdx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], sil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdx]
seto dil
movsx di, sil
cmovb rcx, rax
or bl, al
and cl, 97
xor si, -50
mov ecx, edi
xor edx, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
