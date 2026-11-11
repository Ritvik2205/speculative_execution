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
add al, -9 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], -83
cmp dl, al
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
lea ax, qword ptr [rax + rcx + 41285]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
