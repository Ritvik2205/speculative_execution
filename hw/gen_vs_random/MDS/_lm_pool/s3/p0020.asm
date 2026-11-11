.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -81
not dil
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
btr cx, dx
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 17
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or dil, sil
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
xor rbx, 89
or al, 30
or rdi, -11
or dl, sil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
or al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
