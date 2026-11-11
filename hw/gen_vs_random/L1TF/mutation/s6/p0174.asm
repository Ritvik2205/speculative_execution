.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rax
btr ecx, esi
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 30
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
cmovnz si, dx
adc di, 80
lea rax, qword ptr [rdi + rdx]
jmp .bb_0.1
.bb_0.1:
cmp esi, esi
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi], -13
dec dl
add al, -40 # instrumentation
sbb rax, 1153316263
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], -114
btr edx, 7
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
