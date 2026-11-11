.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 48
sbb ax, -9869
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rdi
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
lea ax, qword ptr [rsi + rax + 56494]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 15
and rsi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
inc eax
and rcx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
dec di
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edi
lea rsi, qword ptr [rcx + rdx + 43352]
cmp rax, 921820217
lea rbx, qword ptr [rdx]
jmp .bb_0.2
.bb_0.2:
add dl, 70 # instrumentation
sbb al, -81
and rdx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rdx
sub rax, rdi
and rcx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rcx]
sbb rax, 803312930
cmp ax, -14781
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
