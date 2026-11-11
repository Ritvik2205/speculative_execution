.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rsi, 92
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], si
dec ax
cmovnle dx, dx
add sil, dil
xor rbx, 92
cmp esi, -52
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rbx]
bswap edx
btr ax, dx
test ecx, 40
seto bl
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
sbb ax, -5921
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
