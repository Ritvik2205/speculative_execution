.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, 8
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
not cl
not edx
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], cx
btc ax, di
xor dl, -19
and al, al
test cl, dl
or dil, dil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
bts rdx, 200
or sil, -78
or sil, bl
test rax, -648054011
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
