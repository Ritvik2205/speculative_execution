.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, cl
and rdi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdi]
or dil, 16
or al, -17
test bl, -114
jmp .bb_0.1
.bb_0.1:
xor dl, al
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
xor dx, 37
xor rdi, -9
or al, cl
test esi, 425331143
xor rdx, -59
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
