.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
or bl, bl
test sil, dil
test al, dil
xor bl, cl
or cl, dl
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
xor dl, dil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
test sil, 41
xor al, -19
or rax, 1461812833
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
