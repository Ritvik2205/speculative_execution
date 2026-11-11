.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -70
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
lea rbx, qword ptr [rdi + rcx + 84]
seto sil
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], 94
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], bl
cmovs cx, ax
and rbx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rbx]
mov bl, 35
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax], 82
test al, -32
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 7
test bl, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
