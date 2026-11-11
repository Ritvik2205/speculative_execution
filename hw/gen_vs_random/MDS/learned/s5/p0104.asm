.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dl
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
or cl, bl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
or sil, -49
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and bl, 68
jmp .bb_0.1
.bb_0.1:
test bl, -9
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
and dil, al
not cl
test al, cl
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], -102
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
