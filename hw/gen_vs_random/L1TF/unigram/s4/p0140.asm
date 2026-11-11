.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rsi
add dl, 120 # instrumentation
adc dil, 15
test dil, cl
add si, -5
btr edx, ebx
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 56
sbb ebx, 9
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
xchg rdx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
mov eax, 64
or dl, 8
and rsi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
cdq
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
