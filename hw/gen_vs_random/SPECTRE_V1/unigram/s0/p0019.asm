.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], al
add dil, -95 # instrumentation
lea di, qword ptr [rsi + rsi + 42]
add bl, sil
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dl
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rsi]
add bl, -76 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rsi]
sbb dil, -93
jb .bb_0.1
jmp .exit_0
.bb_0.1:
adc dl, cl
bt eax, 78
and rbx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 61
sub al, 63
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
