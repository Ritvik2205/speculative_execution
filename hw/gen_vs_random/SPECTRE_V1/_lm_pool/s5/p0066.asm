.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ebx, di
sbb bl, dil
add dil, al
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
cmp al, 13
add dl, 47
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rsi]
add eax, -55403434
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
