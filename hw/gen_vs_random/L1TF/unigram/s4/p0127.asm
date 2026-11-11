.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], di
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rbx
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 84
and rsi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rsi]
add al, 65 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rax]
or di, 61
cmp rdx, rax
and rsi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
cmp rcx, rsi
add dl, -48 # instrumentation
lea eax, qword ptr [rax + rsi]
and rdx, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rdx]
xor rcx, 82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
