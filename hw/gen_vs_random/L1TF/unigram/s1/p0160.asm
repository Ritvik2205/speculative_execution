.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ecx, 22
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 2
btc edx, ecx
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 121
lea eax, qword ptr [rcx + rdi + 52]
cmovno rbx, rcx
lea rdi, qword ptr [rsi + rdi + 51]
xor dl, bl
adc edx, 90
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], dl
sub ax, -27107
lea rdi, qword ptr [rcx]
add al, -37 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
