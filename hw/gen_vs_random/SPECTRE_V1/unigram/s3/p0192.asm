.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rcx, 74
and rcx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rcx]
lea ebx, qword ptr [rax + rax + 18654]
xor dil, al
sbb bl, cl
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], ax
mov rbx, -8992833348021516010
sub al, 63
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 126
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -127 # instrumentation
setp cl
movsx esi, si
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
cmp bl, dl
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], 84
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
