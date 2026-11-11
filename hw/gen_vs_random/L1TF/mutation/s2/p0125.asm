.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
adc eax, 551972257
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
lea esi, qword ptr [rcx]
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 90
cmovno dx, dx
jmp .bb_0.1
.bb_0.1:
xor edx, 101
lea ecx, qword ptr [rdi + rbx]
lea ebx, qword ptr [rsi]
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
test eax, -1410822875
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rbx]
xor cl, cl
bt dx, 223
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
