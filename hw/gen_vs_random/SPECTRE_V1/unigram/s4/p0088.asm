.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
xor dl, bl
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
adc rcx, 12
jns .bb_0.1
jmp .exit_0
.bb_0.1:
mov dil, dil
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], sil
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
and rsi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rsi]
neg rcx
lea di, qword ptr [rcx]
setns bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
