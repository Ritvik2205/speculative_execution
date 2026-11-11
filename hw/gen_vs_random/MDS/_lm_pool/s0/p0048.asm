.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, eax
or sil, -49
and al, dl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
test ebx, -961564216
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
test eax, 298249463
xor cl, bl
xor ax, -4010
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
or rax, -1561934807
test al, bl
xor dil, -70
xor dl, bl
xor al, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
