.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr edi, ebx
lea eax, qword ptr [rdx + rbx + 22]
xchg rbx, rsi
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
and rsi, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rsi]
cwde
btc eax, edx
sub ebx, 27
sub rax, -2089384489
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], al
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 121
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ecx
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
not si
and rdi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdi]
dec bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
