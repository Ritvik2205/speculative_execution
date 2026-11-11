.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, al
bts rax, 77
add al, bl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
sub ecx, 22
and rdi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdi]
adc dl, 107
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], dx
sub ebx, 75
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
and rsi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rsi]
mov al, -28
and cx, 78
and rdi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdi]
bts si, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
