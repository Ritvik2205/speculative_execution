.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor edx, 17
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rax, 1886208862
xor al, dl
xor bl, -61
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
btr di, cx
jmp .bb_0.1
.bb_0.1:
test al, 127
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
cmovle di, ax
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
or al, 24
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
test sil, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
