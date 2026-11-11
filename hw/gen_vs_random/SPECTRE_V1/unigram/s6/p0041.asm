.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 120 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 24
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 69
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
or ax, ax
sub dil, cl
xor bx, 47
and rdi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdi]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], ax
setnp al
add bl, -27 # instrumentation
setle bl
setle al
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
mov rdx, 3609511260715352814
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
