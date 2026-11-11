.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 185586366
test cl, 78
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
adc cl, dil
movsx ecx, bl
xchg esi, eax
add sil, dil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
xor dl, cl
test di, -19523
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
