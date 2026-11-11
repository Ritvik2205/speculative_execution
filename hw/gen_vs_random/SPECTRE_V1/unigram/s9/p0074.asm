.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdi
sub bl, dl
lea cx, qword ptr [rax + rax + 48724]
lea rax, qword ptr [rax + rsi]
add bl, -76 # instrumentation
cmovnle bx, cx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
mov si, 92
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
mul sil
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
imul dl
and dl, bl
cmovo cx, dx
test sil, -31
add al, 21 # instrumentation
adc ax, 32514
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
