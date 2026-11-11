.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edx
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -6
and rax, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rax]
sbb dil, dl
add dl, -96 # instrumentation
cmovo ebx, ebx
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rdi
adc bl, 88
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dil
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], ax
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rcx
add dl, 6 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rcx]
and cl, sil
lea dx, qword ptr [rax + rsi]
mul dl
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
