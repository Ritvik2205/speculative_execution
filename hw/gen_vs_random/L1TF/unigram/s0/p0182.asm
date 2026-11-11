.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, rax
and rbx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rdx]
add dl, 109 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 74
cmovp ax, si
add esi, 88
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
mov sil, sil
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rdi
bt rax, rdi
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdi]
lea esi, qword ptr [rdi + rax + 31]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
