.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], edx
or al, 25
test sil, -55
test al, cl
and bx, 100
btr esi, ebx
test rbx, 100
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
or al, 74
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
bt ax, dx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 105
and bl, 68
bt bx, si
xor sil, -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
