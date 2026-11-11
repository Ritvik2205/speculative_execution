.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
add al, -13
sub si, 32
and rdx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdx]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
test rbx, 9
add eax, 1518653812
cmovbe rdx, rax
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 66
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], bl
and rbx, rcx
and rdi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
lea si, qword ptr [rsi]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], -63
and rdi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
