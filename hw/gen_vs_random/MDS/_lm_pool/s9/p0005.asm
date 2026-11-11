.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], esi
and al, 35
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
test sil, al
not bl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
jmp .bb_0.1
.bb_0.1:
test dil, al
or al, bl
and cl, -111
or al, -61
and dl, cl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], di
test cl, dl
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and cx, -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
