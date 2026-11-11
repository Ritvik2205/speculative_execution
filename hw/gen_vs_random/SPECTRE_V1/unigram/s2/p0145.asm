.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
add al, 112 # instrumentation
setl sil
neg rdx
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rcx]
cwde
lea bx, qword ptr [rsi]
sub bx, ax
lea edx, qword ptr [rsi + rdi + 41]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -94
setbe al
cmp rcx, rbx
and rdi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rsi
mov dil, 42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
