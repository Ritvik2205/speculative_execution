.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rcx]
add rax, 977059290
movzx edi, di
cmovb rbx, rsi
test al, -99
add dx, -90
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
imul eax, ebx, 62
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
or cx, cx
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 118
and rdi, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdi]
mov cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
