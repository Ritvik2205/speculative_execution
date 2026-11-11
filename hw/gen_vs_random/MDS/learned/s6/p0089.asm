.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
xor cx, -18
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
xor bl, sil
test al, -7
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
or al, -22
and dx, 60
and dil, dl
jmp .bb_0.1
.bb_0.1:
cmovnp rbx, rdi
and cl, cl
and rbx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rbx]
test sil, dl
xor dl, -19
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
