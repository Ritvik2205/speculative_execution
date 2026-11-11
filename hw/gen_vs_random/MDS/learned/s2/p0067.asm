.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dl
test al, 91
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
and sil, -69
or sil, cl
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
or cl, cl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
xor dl, 8
xor di, 40
jmp .bb_0.1
.bb_0.1:
bt ebx, 9
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rsi, 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
