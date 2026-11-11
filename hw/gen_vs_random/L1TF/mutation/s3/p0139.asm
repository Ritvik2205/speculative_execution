.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
lea esi, qword ptr [rcx]
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 90
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
adc eax, 551972257
cmovno dx, dx
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test eax, 1730342416
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], esi
bt dx, 223
lea ecx, qword ptr [rdi + rbx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rbx]
lea ebx, qword ptr [rsi]
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
xor edx, 101
xor cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
