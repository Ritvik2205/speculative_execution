.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rcx + rdi + 25527] 
bt di, 236 
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdi] 
add cl, -109 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], -105 
lea rcx, qword ptr [rax + rcx + 59274] 
adc al, cl 
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx] 
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl 
movsx rcx, sil 
lfence
jns .bb_0.1 
jmp .exit_0 
.bb_0.1:
add bl, 26 # instrumentation
sbb dl, cl 
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], ebx 
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al 
bt rdi, 110 
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dl 
and rsi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rsi] 
and rdi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdi] 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
