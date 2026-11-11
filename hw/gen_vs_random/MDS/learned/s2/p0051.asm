.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edx, 189
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
test sil, dil
and ax, 339
test rdi, 91
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], esi
xor dl, cl
and rdx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], si
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
or al, al
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
or al, cl
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
and dil, dl
and bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
