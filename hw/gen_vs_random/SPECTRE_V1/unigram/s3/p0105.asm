.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 65
test ecx, 68
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 1
sub dil, al
lea di, qword ptr [rsi + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 52
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 91
jns .bb_0.1
jmp .exit_0
.bb_0.1:
setnle bl
and rdx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdx]
xchg dl, dl
lea rdx, qword ptr [rdi + rdx + 86]
lea rax, qword ptr [rbx + rcx + 25]
neg ecx
add cl, -42 # instrumentation
lea cx, qword ptr [rbx + rax]
test dil, -116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
