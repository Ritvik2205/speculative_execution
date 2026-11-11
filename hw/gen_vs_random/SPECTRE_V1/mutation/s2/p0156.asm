.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt di, 236
adc al, cl
lea rcx, qword ptr [rcx + rdi + 25527]
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
add cl, -109 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], -105
movsx rcx, sil
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdi]
lea rcx, qword ptr [rax + rcx + 59274]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdi]
bt rdi, 110
add bl, 26 # instrumentation
sbb dl, cl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dl
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
