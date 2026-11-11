.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 44 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdi]
imul al
and rdi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdi]
cmp si, -11
sbb di, -122
and rsi, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rsi]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
lea rcx, qword ptr [rdi + rdi + 3798]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edi
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdx
and bl, al
lea cx, qword ptr [rbx + rax]
add cl, 36 # instrumentation
sub rsi, rsi
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdi]
sbb bl, cl
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
