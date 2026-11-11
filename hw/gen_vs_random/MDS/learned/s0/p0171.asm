.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 6
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
xor al, dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and eax, 33
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and cl, al
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and dl, sil
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
