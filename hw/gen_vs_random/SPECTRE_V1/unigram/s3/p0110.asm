.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
cwde
movsx rdx, si
and rdi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdx]
setns sil
mov al, dil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
test rcx, 93
cmovnbe si, si
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dil
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
sub dil, cl
btr rbx, rdx
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
