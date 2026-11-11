.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -103 # instrumentation
cmovbe dx, dx
and sil, sil
test bl, cl
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
or cl, al
and cl, -6
test al, bl
or sil, cl
or al, 24
jmp .bb_0.1
.bb_0.1:
test sil, -55
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and al, dil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
test ax, 30932
and al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
