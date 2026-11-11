.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 70
setp cl
neg al
movzx ax, bl
and rcx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rcx]
add al, al
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
cmp esi, 97
xor dil, -37
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -79
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], si
lea esi, qword ptr [rsi + rbx + 99]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
