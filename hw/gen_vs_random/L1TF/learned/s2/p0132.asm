.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, 32579
cmovns dx, ax
cmp al, al
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 80
adc rax, -1877286258
xchg ecx, edx
or bl, cl
or sil, -5
jmp .bb_0.1
.bb_0.1:
or al, -87
dec al
xor cx, -79
sub cl, 32
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
or rcx, -10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
