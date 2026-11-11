.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 6 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 27
lea edx, qword ptr [rbx + rbx + 24069]
and rcx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 90
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], 81
jmp .bb_0.1
.bb_0.1:
add bl, 62 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rcx]
or bl, bl
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
bt rdi, 18
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], cl
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 125
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], -8408
jmp .bb_0.2
.bb_0.2:
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
cmp rax, 16650668
lea rbx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
