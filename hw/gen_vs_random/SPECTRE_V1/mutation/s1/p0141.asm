.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
add bl, -89 # instrumentation
sbb ebx, edx
test al, -75
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -71
cmovno ax, di
test rcx, -1420345926
and rcx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rcx]
btr edx, 166
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], -31
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], cl
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 1
sub bl, dl
lea eax, qword ptr [rbx + rbx + 18245]
cmp al, 62
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
