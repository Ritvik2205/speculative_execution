.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -26
and bl, cl
and dl, cl
or bl, -99
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
cmp al, -122
xor al, bl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
cmp al, 115
add dl, -82
cmp al, -78
sbb al, 57
cmp al, 75
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
test al, 52
cmp al, 98
sbb dl, -62
and cl, -128
mov al, 7
xor ax, -22861
and cl, sil
add rax, -1121139858
adc bl, -58
sub al, 29
and dil, -120
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], 55
or al, cl
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
mov cl, bl
jmp .bb_0.1
.bb_0.1:
test bl, -116
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
add dl, dil
adc al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
