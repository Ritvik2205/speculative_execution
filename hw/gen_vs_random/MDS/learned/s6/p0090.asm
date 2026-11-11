.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], esi
test al, 127
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
xor bl, al
xor cl, 55
xor eax, 984871847
and sil, 74
add dl, 56
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
test sil, -96
xor si, 91
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
