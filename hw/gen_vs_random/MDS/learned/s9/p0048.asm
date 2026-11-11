.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -8
or di, 94
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
or sil, -49
bt ax, cx
xor bl, al
and rax, 627810357
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
or dil, cl
cmovle bx, ax
or al, -17
jmp .bb_0.1
.bb_0.1:
xor dl, -59
xor cx, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
