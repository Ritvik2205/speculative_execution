.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, sil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
test eax, 1838539683
xor bl, dil
or al, -22
test esi, 425331143
test edi, -1252846009
and al, 14
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
xor cl, 83
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], bx
xor dl, bl
or bx, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
