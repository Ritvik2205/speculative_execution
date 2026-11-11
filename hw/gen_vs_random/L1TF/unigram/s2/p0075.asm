.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rcx
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
sbb edx, edx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and rdi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdi]
test dl, 84
cmovbe esi, edi
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
add cl, 6 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rcx]
test ax, 7679
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
lea rdi, qword ptr [rax + rdi + 23]
and rdi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdi]
lea rcx, qword ptr [rdi + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
