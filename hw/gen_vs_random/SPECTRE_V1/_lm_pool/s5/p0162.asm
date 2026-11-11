.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -98 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], si
sbb dl, al
mov bl, dil
sub bl, sil
and bl, -43
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and cl, cl
and bl, 124
sub bl, -19
lea ax, qword ptr [rbx + rcx + 94]
lea di, qword ptr [rbx + rdi + 40]
cmp eax, 100
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
