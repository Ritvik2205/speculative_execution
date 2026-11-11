.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
test edi, -1252846009
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
not al
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
and bl, 68
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
or al, -17
or al, 54
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 76
or sil, -78
or sil, -49
jmp .bb_0.1
.bb_0.1:
xor dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
