.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rbx, rsi
imul ax, si, 123
not rcx
sbb sil, dil
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], ax
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], eax
and dil, -93
not di
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rax + rsi]
sbb al, -114
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
lea rax, qword ptr [rdi]
lea ax, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
