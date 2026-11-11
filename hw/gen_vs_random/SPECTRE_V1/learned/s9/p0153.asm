.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 38
xchg ebx, esi
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], di
mov sil, cl
add bl, bl
and rsi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rsi], 86
sbb sil, al
sub al, dl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and edx, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
