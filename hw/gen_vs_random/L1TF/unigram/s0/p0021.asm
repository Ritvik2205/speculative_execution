.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -53 # instrumentation
lea rsi, qword ptr [rax + rdx + 34]
and rdi, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdi]
bts ebx, edi
dec eax
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
or bl, sil
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 55
and edx, 47
add al, 78 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdi]
mov ebx, 675401645
and dl, 73
and rsi, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rsi]
sbb sil, bl
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
