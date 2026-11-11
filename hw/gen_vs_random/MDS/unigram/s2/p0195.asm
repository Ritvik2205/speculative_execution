.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
cmovnb cx, cx
and al, -56 # instrumentation
cmovl rdi, rax
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 47
and cx, dx
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 2
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dl
bt eax, 40
xor dil, sil
and cl, -109 # instrumentation
not rdx
or ax, -4635
btr edi, eax
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
