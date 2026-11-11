.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dil
lea rbx, qword ptr [rdi + rcx]
add dl, -93 # instrumentation
xchg rcx, rdx
setp sil
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], ebx
cmovo edi, ebx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 5
mov cx, bx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 89
and rcx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], -78
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
add cl, -39 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], 48
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
