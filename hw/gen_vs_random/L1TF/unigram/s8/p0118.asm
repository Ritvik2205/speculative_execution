.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc esi
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
add bl, 124 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], sil
and rsi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rsi]
and al, cl
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 24
jmp .bb_0.1
.bb_0.1:
add al, -34 # instrumentation
setnp bl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
lea rdi, qword ptr [rax]
lea edx, qword ptr [rdi]
cmp dil, cl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -13
sbb bl, -88
adc sil, 40
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 1266701637
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
