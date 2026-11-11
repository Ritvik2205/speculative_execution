.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, -603819833
and rsi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rsi]
add al, 74
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rdx], si
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ebx
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 37
lea eax, qword ptr [rcx]
add cl, -36
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rbx]
neg bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
