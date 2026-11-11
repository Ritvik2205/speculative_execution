.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 66
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], ebx
xchg cl, cl
and rsi, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], si
add bl, -9 # instrumentation
adc rcx, 44
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
cmovle eax, ecx
or al, -48
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
cmovnb rsi, rbx
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 100
bts rcx, rsi
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], bx
lea rcx, qword ptr [rdx]
setp bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
