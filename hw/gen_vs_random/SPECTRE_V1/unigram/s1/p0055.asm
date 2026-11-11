.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
mov dl, al
cmovl edx, esi
and rdi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx]
cbw
bts rcx, 27
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
add bl, 41 # instrumentation
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], edx
bt edi, 36
lea cx, qword ptr [rsi]
or al, al
adc dil, sil
sub cl, 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
