.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
sbb cl, bl
sub rdi, 96
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 1266701637
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], bl
adc cl, bl
lea ax, qword ptr [rdi + rcx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 80
add bl, -80 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 25
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
add bl, -116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dil
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
