.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg esi, eax
or cl, -62
seto sil
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], cl
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
xchg bl, al
lea rsi, qword ptr [rdx + rcx + 57579]
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
xor al, -89
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 2
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
add bl, -43 # instrumentation
adc si, -23
cmovle edi, ecx
cmovle rcx, rbx
or dl, sil
adc eax, 34
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rsi]
sbb bl, dl
btc di, bx
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
