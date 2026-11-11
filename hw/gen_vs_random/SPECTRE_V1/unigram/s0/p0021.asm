.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub edx, -63
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], bl
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
cwd
add bl, 2 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovle rbx, rax
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
xor dil, -37
lea ax, qword ptr [rcx + rsi]
mov bl, dl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
cmovp ax, cx
cmovnl ecx, ebx
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], cx
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
