.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
or al, sil
jmp .bb_0.1
.bb_0.1:
test dil, -80
xor ax, 31969
test dil, cl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
xor bx, 2
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
or al, -78
and al, dl
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
and dl, cl
test sil, cl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and ax, 339
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
