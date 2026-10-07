.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rcx + rdi + 25527] 
lfence
bt di, 236 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
lfence
bsf rdi, qword ptr [r14 + rdi] 
lfence
add cl, -109 # instrumentation
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
mov byte ptr [r14 + rdi], -105 
lfence
lea rcx, qword ptr [rax + rcx + 59274] 
lfence
adc al, cl 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
setns byte ptr [r14 + rbx] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
test byte ptr [r14 + rdx], cl 
lfence
movsx rcx, sil 
lfence
jns .bb_0.1 
jmp .exit_0 
.bb_0.1:
add bl, 26 # instrumentation
lfence
sbb dl, cl 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
and ebx, 0b111 # instrumentation
lfence
bt dword ptr [r14 + rdi], ebx 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock sub byte ptr [r14 + rdx], al 
lfence
bt rdi, 110 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
test byte ptr [r14 + rdx], dl 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovno ecx, dword ptr [r14 + rsi] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
setb byte ptr [r14 + rdi] 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
