.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdi, qword ptr [rdx + rcx + 39]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
movsx cx, bl
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rsi]
or ebx, -124
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 11
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
add al, -62 # instrumentation
setnb al
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 19
loope .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
neg al
cmp dl, cl
imul edx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
lea rdx, qword ptr [rax + rax + 100]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
