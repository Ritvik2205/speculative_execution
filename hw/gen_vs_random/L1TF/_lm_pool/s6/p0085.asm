.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
and ax, 26813
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
sub sil, -99
setb cl
jmp .bb_0.1
.bb_0.1:
cmp ax, 24210
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 83
sub sil, -99
lea rdi, qword ptr [rbx + rcx]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
