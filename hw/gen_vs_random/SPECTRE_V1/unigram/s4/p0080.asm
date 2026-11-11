.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc bl, sil
and rbx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rbx]
sub rax, 1451608022
cmovns rdi, rax
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 16
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and cl, cl
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], -106
xor eax, 1034314125
test cl, dil
lea esi, qword ptr [rdi]
sub edi, 41
and rdx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdx]
cmovl ax, dx
and rbx, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rbx]
and al, -119
cmovo esi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
