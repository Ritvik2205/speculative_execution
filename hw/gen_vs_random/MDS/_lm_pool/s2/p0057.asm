.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -103 # instrumentation
cmovbe cx, cx
and al, dil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
or al, 16
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rdx, 12
and al, cl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 90
test cl, -123
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
bts eax, 222
btr cx, 9
bt dx, ax
and rdx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
