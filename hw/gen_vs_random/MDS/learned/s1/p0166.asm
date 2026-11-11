.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 1
or dl, bl
or cl, 6
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
test al, 66
test dl, 27
xor bl, sil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
test eax, 424329527
and dil, -39
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
