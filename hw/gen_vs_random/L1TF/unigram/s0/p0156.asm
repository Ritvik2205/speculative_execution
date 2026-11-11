.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
lea ax, qword ptr [rsi]
add sil, 126 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], si
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], al
sub bl, 84
and rcx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rcx]
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rsi
jmp .bb_0.1
.bb_0.1:
imul cx, di, 19
lea bx, qword ptr [rbx + rax + 8]
lea cx, qword ptr [rdi + rcx]
sbb cl, bl
add al, 51 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
