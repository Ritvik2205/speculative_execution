.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and ax, -16061
xor al, 99
bt bx, dx
or al, 74
btr si, dx
and bx, 4
and rcx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rcx]
and al, sil
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 58
and al, 84
test ax, 4430
not al
cmp sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
