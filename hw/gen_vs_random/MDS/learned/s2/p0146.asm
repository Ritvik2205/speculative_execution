.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -103 # instrumentation
cmovbe si, si
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
test al, -81
bt cx, dx
and rax, 1250429750
xor bl, 67
test dx, 16353
not al
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and bl, al
and dl, dl
xor al, 9
btr si, 208
or sil, -78
test al, dil
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
