.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc bl, dl
and cl, dil
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 12
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 93
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], ecx
cmovb esi, eax
sbb dl, 127
not cl
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 74
and rcx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
