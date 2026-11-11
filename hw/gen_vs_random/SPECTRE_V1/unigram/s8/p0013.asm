.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rcx
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -39
and rbx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdi]
adc cl, -19
jb .bb_0.1
jmp .exit_0
.bb_0.1:
imul edi, edi, 71
or dil, cl
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 10
mul sil
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rax
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
cmovl eax, ebx
add dl, -11 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdi]
mul dl
imul dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
