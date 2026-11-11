.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 54
xor rcx, -2
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], eax
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
or eax, -927349615
or cl, 30
or sil, dl
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], ebx
xor di, 40
and al, -54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
