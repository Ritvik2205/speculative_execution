.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, 94
test bl, -8
xor ax, 913
btr eax, ebx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 24
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
mov ecx, 74
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rdi
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], bl
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], ebx
adc ebx, esi
and rdi, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdi]
cmovnb ebx, ecx
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
