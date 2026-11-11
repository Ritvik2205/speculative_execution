.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
xor cl, bl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
or al, cl
xor bl, -27
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and bx, 63
jmp .bb_0.1
.bb_0.1:
or bl, 100
or dl, dl
and dl, sil
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
test dl, dil
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ebx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
