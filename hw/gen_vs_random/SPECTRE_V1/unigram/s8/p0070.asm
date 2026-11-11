.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rdx
setp sil
add cl, 107 # instrumentation
lea eax, qword ptr [rsi + rdi]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 34
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -122
lea si, qword ptr [rcx + rsi + 10]
movsx edx, dl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
lea edx, qword ptr [rbx]
cmp cl, dil
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rsi]
xchg rsi, rax
and al, 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
