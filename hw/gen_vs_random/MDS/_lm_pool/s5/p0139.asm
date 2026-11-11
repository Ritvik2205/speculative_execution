.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, ebx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdi]
and bl, bl
xor cl, bl
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ebx
or bl, -125
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
and rax, 627810357
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
