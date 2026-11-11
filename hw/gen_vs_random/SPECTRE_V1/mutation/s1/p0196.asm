.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
xchg esi, eax
or cl, -62
seto sil
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], cl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
cmovle edi, ecx
xchg bl, al
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
adc eax, 34
or dl, sil
lea rsi, qword ptr [rdx + rcx + 57579]
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 2
add bl, -43 # instrumentation
adc si, -23
xor al, -74
cmovle rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
