.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 6
and sil, dl
and dl, cl
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and al, al
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
or al, 54
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
test dil, -80
test cl, sil
xor dl, -19
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
or dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
