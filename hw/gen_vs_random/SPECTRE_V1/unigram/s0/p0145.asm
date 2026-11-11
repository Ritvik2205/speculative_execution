.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
add dl, al
and rax, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rax]
imul al
and rsi, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edx
add bl, 74
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
or cl, 97
and rax, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rax]
and dl, 90
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
xchg dl, al
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
