.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
add dl, 22
test eax, 899472326
xor al, bl
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 5
and rdi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdi], 69
jmp .bb_0.1
.bb_0.1:
or cl, 105
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
and dl, sil
xor rbx, 61
and rbx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
