.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -48 # instrumentation
lea ecx, qword ptr [rcx + rbx]
add ax, 99
sub dl, cl
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 71
sbb dl, cl
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
or cx, bx
and rbx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
add dl, -121 # instrumentation
cmovnp edx, ecx
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ebx
cmp di, -98
and rax, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rax]
test al, -5
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 98
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -93
mov rdx, -1012904117298842753
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], eax
test rdi, 38
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 64
sub rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
