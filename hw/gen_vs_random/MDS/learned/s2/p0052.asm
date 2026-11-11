.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
cmovbe si, dx
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
test cl, -86
xor al, 9
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
or al, dil
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
or sil, dl
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
xor al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
