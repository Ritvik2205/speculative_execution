.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, sil
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rax
lea ax, qword ptr [rsi + rbx + 23]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 56
add bl, -4 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 54
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dl
not eax
adc sil, cl
sub cl, dil
sbb rbx, 30
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], esi
xor dl, sil
and ax, dx
sub cl, 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
