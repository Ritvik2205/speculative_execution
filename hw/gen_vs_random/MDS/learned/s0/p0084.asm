.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, ax
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
and dl, sil
bts rdi, 130
and ax, 27170
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
xor dil, al
test al, -81
and dl, -73
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
