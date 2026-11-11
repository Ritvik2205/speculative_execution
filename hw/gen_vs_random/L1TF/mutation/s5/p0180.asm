.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
lea rax, qword ptr [rdi + rdx]
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
cmovnz si, dx
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
btr ecx, esi
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rax
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 30
adc di, 80
jmp .bb_0.1
.bb_0.1:
cmp esi, esi
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi], -13
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], -114
add al, -40 # instrumentation
sbb rax, 1153316263
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
btr edx, 7
dec dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
