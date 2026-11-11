.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
or ax, 16560
or al, 16
and al, dl
jmp .bb_0.1
.bb_0.1:
xor rdi, -9
and rbx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rbx]
or bl, 127
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and al, dl
xor dil, bl
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
or cl, sil
and sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
