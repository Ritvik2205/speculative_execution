.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], dx
and rax, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rax]
xchg al, al
or edx, 99
and rbx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rbx]
movzx edx, dil
lea edi, qword ptr [rdi + rbx]
cwde
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 6
and rsi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 77
btr edx, ecx
neg rdx
lea esi, qword ptr [rsi + rcx + 8]
xor cx, 113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
