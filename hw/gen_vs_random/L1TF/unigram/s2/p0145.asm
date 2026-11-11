.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rbx]
add bl, 92 # instrumentation
sets dl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
cmovbe esi, edx
add cl, -33 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
cmovnbe ecx, edi
setp dil
and rdi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdi]
lea edi, qword ptr [rax]
cmovnb ecx, ebx
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
jmp .bb_0.1
.bb_0.1:
mov al, bl
imul rcx, rax, 26
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -73
adc al, dil
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
