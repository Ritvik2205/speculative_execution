.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], -32
and ax, 29207
xor dil, -70
xor dl, 40
test bl, -14
or cx, 39
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -22
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
jmp .bb_0.1
.bb_0.1:
or cl, bl
or bl, sil
xor al, -4
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
or sil, -49
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
