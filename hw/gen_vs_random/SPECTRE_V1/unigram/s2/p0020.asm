.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
lea rsi, qword ptr [rax + rbx + 27]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 52
test rdx, 1657596343
neg rbx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 6
adc edx, 92
cmp bl, -114
neg sil
cmp dx, 76
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 65
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 71
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], sil
and rax, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rax]
cmovno si, si
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
