.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
cmovle ax, ax
and rcx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rcx]
add cx, si
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 25
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 103
cmp al, 48
btc cx, 54
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 24
mov eax, edx
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], ecx
adc rdi, 87
add bl, 81 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
