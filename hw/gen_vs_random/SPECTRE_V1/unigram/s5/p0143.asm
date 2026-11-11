.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -100
lea dx, qword ptr [rsi + rbx]
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
lea edi, qword ptr [rcx + rdi]
add dl, -9 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rcx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, -82
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], ecx
neg rcx
sbb rdx, -34
and rax, -1128038253
xchg dil, sil
and rsi, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
