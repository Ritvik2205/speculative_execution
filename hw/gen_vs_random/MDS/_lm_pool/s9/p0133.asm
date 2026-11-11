.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], edi
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ecx
or al, sil
and edx, -44
or rax, 52
and rax, 79
xor ax, -23364
test eax, -675944960
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdi]
test cl, dl
or si, -12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
