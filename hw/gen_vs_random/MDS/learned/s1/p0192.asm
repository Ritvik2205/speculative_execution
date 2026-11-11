.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
bt ebx, edx
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
test eax, -1634766116
cmovle dx, cx
test al, -7
or al, sil
and sil, -69
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
or sil, -78
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
test al, al
test bl, -9
and ax, 27170
or al, 30
xor rdi, -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
