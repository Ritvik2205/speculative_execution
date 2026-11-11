.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr cx, bx
xor sil, -15
or al, 37
and rdx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and bl, sil
xor dil, -3
cmovnz rcx, rdi
test cl, dil
or eax, -696456144
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
xor al, -4
or dl, dil
or sil, cl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
