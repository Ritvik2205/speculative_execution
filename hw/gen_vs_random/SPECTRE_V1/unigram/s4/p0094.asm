.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -95
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
adc dl, dil
cmovle bx, cx
bt edi, 121
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdx
bt edi, 121
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdi]
cwd
and rdi, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
add dil, -56 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], edi
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
setle cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
