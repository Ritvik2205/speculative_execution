.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub ecx, 99
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 89
and sil, 110
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 41
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], dx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], ax
jmp .bb_0.1
.bb_0.1:
cmovb dx, si
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
bt rcx, rdx
and rsi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rsi]
add cl, 95 # instrumentation
mov al, dil
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 72
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], sil
and al, -111
or rsi, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
