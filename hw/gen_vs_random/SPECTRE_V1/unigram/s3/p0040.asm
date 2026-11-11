.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rbx + rsi + 20]
and rcx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
lea si, qword ptr [rbx + rdx]
sub rbx, -11
lea cx, qword ptr [rcx]
cwd
lea esi, qword ptr [rax + rax + 81]
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea rax, qword ptr [rdi + rsi + 73]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 91
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
test ecx, 93
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 66
add sil, -61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 45
cmovs rbx, rbx
lea rbx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
