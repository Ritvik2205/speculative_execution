.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], sil
sbb bl, dl
sbb rcx, 33
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 103
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
add cl, -18 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 90
and rbx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rbx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sub esi, 3
add rbx, 60
sub cl, bl
setnp cl
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and dl, al
inc al
btr cx, 14
and rsi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
