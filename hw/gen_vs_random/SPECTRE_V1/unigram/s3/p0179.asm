.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc ax, -614
mov cx, 31310
cmovns rbx, rdx
cmovle cx, di
cmp sil, cl
lea rdx, qword ptr [rsi + rax + 80]
sub bl, dil
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -115
and rax, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 64
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rax
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rcx
setp al
add dl, -89 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 78
sub cx, 90
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
