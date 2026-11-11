.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc cx, 50
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], 13
imul ax, cx
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], esi
xor cl, bl
cmovnbe ebx, eax
adc ebx, 65
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], 60
lea ebx, qword ptr [rax]
and rax, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rax]
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
and rdi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdi]
add dl, 89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdi]
adc esi, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
