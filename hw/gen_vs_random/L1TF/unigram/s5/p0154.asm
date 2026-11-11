.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb al, -50
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rcx]
add dil, -5 # instrumentation
adc sil, dil
or dl, -92
cmp edx, 99
cmovnbe bx, di
lea edx, qword ptr [rcx + rax]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 6
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
lea di, qword ptr [rbx + rdi + 97]
mov al, al
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
xor rax, 20
lea rdx, qword ptr [rcx + rbx]
add al, -110 # instrumentation
btr ax, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
