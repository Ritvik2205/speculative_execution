.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, bl
bts rcx, 75
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
or al, bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
btc si, 99
test bl, dil
or cl, 30
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
bt cx, si
or bl, sil
or rax, 1020005579
test dil, 46
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
