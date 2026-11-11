.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, -48
sbb dil, -106
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax], 104
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
neg rdi
or sil, 52
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], ax
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edi
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdi]
add sil, dl
jmp .bb_0.2
.bb_0.2:
add bl, -70 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rcx]
sub dl, -12
inc bl
lea ax, qword ptr [rdx + rax + 36518]
test cl, -120
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], esi
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
