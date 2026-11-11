.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], ecx
neg dil
add sil, 104 # instrumentation
sbb rsi, 80
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -101
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rcx
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
add al, -57 # instrumentation
cmovo rcx, rax
and rax, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rbx]
sbb cl, al
add esi, -124
imul sil
mov al, dil
cmovbe rdx, rax
add bl, -22 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdx]
add dl, 125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
