.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edi, qword ptr [rdi + rbx + 48359]
and rdi, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rdi]
or rdi, rdi
mul dl
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rsi], esi
btr dx, 26
cmovnbe eax, edx
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], al
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], edx
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
sub dx, -23
and rbx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rbx]
movsx edx, sil
and dl, -111
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
cmp ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
