.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 51
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], ax
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 13
adc bx, cx
and rbx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], 71
test cl, -31
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 86
cmovns rbx, rdi
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx], 86
sub sil, -55
and rsi, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
dec al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
