.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea esi, qword ptr [rsi + rdx]
xor cl, cl
lea ax, qword ptr [rcx]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], -49
or bl, -88
cmp al, 56
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 7
lea ebx, qword ptr [rsi]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rdx
jmp .bb_0.1
.bb_0.1:
add cl, dl
sub al, dl
sub dl, -34
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], -110
and rcx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 90
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], -25
cmovbe cx, dx
movzx ax, dl
xor dl, al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
sub al, al
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -380598914
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
