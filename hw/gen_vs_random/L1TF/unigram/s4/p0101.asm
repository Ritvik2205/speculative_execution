.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rax
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
cmp edx, 58
test bl, 29
and rcx, 22
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 40
bt rcx, rbx
adc eax, edi
adc ecx, 70
and rcx, 31
or dil, sil
or bl, 61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
