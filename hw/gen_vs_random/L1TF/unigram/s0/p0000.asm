.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 50
add dil, 39 # instrumentation
lea di, qword ptr [rax]
cmovnz rax, rdi
bt rcx, rcx
lea cx, qword ptr [rcx + rbx + 71]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -98
add ebx, 2
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
btr rbx, rcx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], bl
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], dx
add dil, -87 # instrumentation
cmovnle rsi, rdi
test sil, al
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
