.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, 105
and rsi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -82
movzx bx, dl
and rdi, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 6
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
cbw
adc rax, 1431457700
sbb al, bl
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], -22
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
