.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], 81
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -40
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdx]
imul si, dx
btc rbx, 15
cmovnz ax, si
jmp .bb_0.1
.bb_0.1:
adc rax, 41513450
or ax, -10161
dec eax
test bx, 61
and rdi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdi]
or bl, -88
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], sil
add al, 104 # instrumentation
mov eax, 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
