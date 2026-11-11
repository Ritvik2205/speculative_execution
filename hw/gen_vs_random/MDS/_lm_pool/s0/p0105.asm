.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -114
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], cx
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
test dl, -119
and dil, -39
jmp .bb_0.2
.bb_0.2:
or al, dl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
bt dx, ax
xor sil, -14
xor dl, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
