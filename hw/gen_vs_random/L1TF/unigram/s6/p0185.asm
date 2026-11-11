.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bl, dl
setnz al
lea edi, qword ptr [rdi + rdx + 56]
add bl, 68
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], cl
lea rcx, qword ptr [rdx]
xchg cl, bl
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 0
lea esi, qword ptr [rcx]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 20
imul edx
lea ebx, qword ptr [rcx + rcx + 55]
cmp bl, sil
neg rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
