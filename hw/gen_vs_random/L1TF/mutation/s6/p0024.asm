.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdi]
sub dl, -34
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 10
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 6
movzx bx, dl
and rsi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 53
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
cbw
adc rax, 1431457700
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
sbb al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
