.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], bx
and rdx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdx]
neg rdx
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -123
add bl, -15 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], sil
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
add al, 3
adc di, 39
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rax]
movsx eax, al
and rcx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rcx]
bts rax, 50
sbb bl, cl
cmovno bx, bx
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
