.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
seto sil
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
or cl, -98
xchg esi, eax
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], cl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
cmovle rcx, rbx
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 2
cmovle edi, ecx
adc eax, 56
xchg bl, al
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
add bl, -43 # instrumentation
adc si, -23
xor al, 54
or dl, sil
lea rsi, qword ptr [rdx + rcx + 36993]
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
