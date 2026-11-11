.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], edi
test al, 91
and rcx, -63
and eax, 33
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
xor cl, 98
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
or ax, -20176
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
or al, -17
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and bl, sil
xor rax, -773894210
test esi, 1857129931
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and cx, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
