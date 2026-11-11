.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, eax
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 69
xor al, 8
and cl, -71
test bl, bl
test al, 127
or al, 54
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
xor rax, -270810088
bts rdx, rbx
xor dl, -43
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 56
and rbx, 65
bt bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
