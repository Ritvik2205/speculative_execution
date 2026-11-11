.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
lea esi, qword ptr [rcx]
adc eax, -1211718481
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
cmovno dx, dx
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 90
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
bt dx, 223
lea ecx, qword ptr [rdi + rbx]
xor edx, 101
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rbx]
test eax, 1939511779
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], esi
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
lea ebx, qword ptr [rsi]
xor cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
