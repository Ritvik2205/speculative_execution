.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, ax
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ebx
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
bt si, ax
test dl, sil
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and al, 84
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
jmp .bb_0.2
.bb_0.2:
and dl, -73
xor cl, 24
xor al, 115
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
jmp .bb_0.3
.bb_0.3:
test sil, dl
xor sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
