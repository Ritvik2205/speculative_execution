.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 35 # instrumentation
cmovnz rbx, rdi
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
sbb dl, -23
cbw
and rcx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rcx]
lea edx, qword ptr [rbx + rdi + 42]
and rdi, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rbx]
cmovz esi, eax
or sil, -27
xor cl, -103
adc bl, 27
lea di, qword ptr [rcx]
imul edx, ecx, 79
test cl, al
lea esi, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
