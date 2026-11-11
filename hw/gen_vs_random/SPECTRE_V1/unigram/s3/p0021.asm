.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb sil, dil
sub dil, al
lea di, qword ptr [rsi + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 68
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 91
setnle bl
and rbx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
xchg dl, dl
lea rdx, qword ptr [rdi + rdx + 52]
lea rax, qword ptr [rbx + rdi + 67]
neg ecx
add cl, -42 # instrumentation
lea cx, qword ptr [rbx + rax]
test dil, -116
sub sil, -18
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
