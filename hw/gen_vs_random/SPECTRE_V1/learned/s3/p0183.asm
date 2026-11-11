.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -73 # instrumentation
setnbe al
add cl, bl
or ax, -89
setnp cl
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], al
movsx rdi, bl
btc cx, dx
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], sil
test sil, 112
jmp .bb_0.1
.bb_0.1:
add cl, 102 # instrumentation
sbb di, bx
sub dl, al
jmp .bb_0.2
.bb_0.2:
add al, -39 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
