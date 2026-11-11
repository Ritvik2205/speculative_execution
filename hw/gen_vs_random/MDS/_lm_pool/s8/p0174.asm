.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ax, di
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
or al, cl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
or sil, al
not al
or al, 24
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
xor al, -4
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
bt ax, si
and sil, -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
