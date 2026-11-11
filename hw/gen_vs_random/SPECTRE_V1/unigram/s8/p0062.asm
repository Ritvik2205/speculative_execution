.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 25
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 95
and rbx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rbx]
test rdx, 1657596343
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx], 13
neg eax
and rdx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdx]
test bl, -8
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
add bl, cl
imul rdx, rbx
bts rbx, rsi
mov si, 17
and sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
