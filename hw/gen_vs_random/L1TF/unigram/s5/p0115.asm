.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 83
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
mov ax, 6
setle cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 36
imul edi, eax
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ecx
cmp ecx, 57
neg di
cmp rdi, rsi
or rbx, 18
xor bx, 59
or cl, 105
cmovnp ebx, ecx
and rsi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
