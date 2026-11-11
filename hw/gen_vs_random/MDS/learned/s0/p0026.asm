.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, 12
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
and dl, bl
and sil, sil
and dil, dil
test eax, 424329527
test rax, rcx
test eax, 158941032
jmp .bb_0.1
.bb_0.1:
or ax, 30524
and cl, cl
and al, cl
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], si
btc di, 233
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
