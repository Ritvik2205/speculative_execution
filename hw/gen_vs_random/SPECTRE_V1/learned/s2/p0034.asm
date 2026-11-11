.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -26 # instrumentation
cmovnp ax, dx
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
adc cl, dl
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
mul rdi
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
cmovnl ebx, esi
xor eax, -764881786
lea ax, qword ptr [rsi + rdx]
mov rax, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
