.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
lea esi, qword ptr [rcx]
adc eax, 551972257
cmovno dx, dx
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 90
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
mov dl, cl
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], edx
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rcx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
