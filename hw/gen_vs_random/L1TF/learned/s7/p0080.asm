.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ecx, ax
add dil, -7
jmp .bb_0.1
.bb_0.1:
test al, bl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
cmp rbx, 97
and rax, -109
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 60
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
test bl, 84
cmp sil, -11
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
