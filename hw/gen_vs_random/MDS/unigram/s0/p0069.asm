.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 86
and dl, -107 # instrumentation
cmovz rdx, rdi
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
and rdi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdi
cmovnp rcx, rbx
and cl, -22 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rsi]
cmovp edx, edx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], sil
and di, 58
or dl, bl
and rax, -1909598591
cmovl rcx, rdi
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
cmovns cx, di
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 103
and rdx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
