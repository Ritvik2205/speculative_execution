.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
sub al, bl
sub sil, -18
lea ecx, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
lea edi, qword ptr [rax]
cmp cl, 91
add dl, dil
lea di, qword ptr [rax]
sub dil, bl
lea edi, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
