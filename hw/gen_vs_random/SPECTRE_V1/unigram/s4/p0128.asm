.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cx, ax
lea rax, qword ptr [rcx]
adc dl, cl
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -83 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], si
cbw
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
cmovnl rcx, rdx
cmovnb cx, bx
btr ecx, 42
add dl, -105 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], al
movsx rbx, dl
sbb dl, -23
cmovo eax, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
