.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 6
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -54
sbb eax, -108
and rdx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], esi
sub sil, -18
add cl, al
adc dl, cl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], -9
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -118
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdx]
test rax, rbx
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], edx
seto sil
cmovl cx, ax
and rsi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
