.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 10
inc rbx
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 0
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 27
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
xor bl, dl
or al, cl
or sil, al
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
