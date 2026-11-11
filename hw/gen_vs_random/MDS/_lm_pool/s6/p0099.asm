.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dil
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edx
btr si, cx
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
bt bx, ax
xor sil, al
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
xor ax, -1005
test edi, -1252846009
or dl, -21
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and al, -8
xor dl, cl
xor al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
