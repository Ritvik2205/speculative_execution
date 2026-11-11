.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 7
lea rdx, qword ptr [rsi + rdx + 86]
and dil, 58
sbb sil, dl
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx]
cmp sil, dil
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], -50
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
lea edx, qword ptr [rsi]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 41
and rdi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 90
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rdi
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], -21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
