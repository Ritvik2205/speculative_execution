.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
cmovns cx, ax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], ax
test ecx, -1843375753
and dl, bl
and cl, bl
or cl, sil
xor rcx, -2
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -110
test eax, 1838539683
test cl, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
