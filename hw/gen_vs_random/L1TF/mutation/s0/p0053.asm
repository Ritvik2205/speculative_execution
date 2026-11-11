.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
lea rax, qword ptr [rdi + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 30
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
adc di, 80
btr ecx, esi
cmovnz si, dx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rax
jmp .bb_0.1
.bb_0.1:
add al, -40 # instrumentation
sbb rax, 1153316263
dec dl
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
btr edx, 7
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi], -13
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 90
cmp esi, esi
jmp .bb_0.2
.bb_0.2:
add al, 78 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdi]
imul rbx, rbx, -39
bts bx, 223
add cl, -36
xor cx, 113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
