.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 40 # instrumentation
cmovbe dx, ax
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
cmp al, 27
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
cmovnz ebx, esi
and rax, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rax]
adc dil, dl
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
