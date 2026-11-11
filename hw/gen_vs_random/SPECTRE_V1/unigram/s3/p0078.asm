.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 26 # instrumentation
sbb cl, bl
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 13
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 32
and ax, di
adc bl, 27
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], dx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub bx, si
and rsi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rsi], 82
lea esi, qword ptr [rax + rcx]
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 3
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], bl
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 56
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], 2
sbb rdx, 7
imul al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
