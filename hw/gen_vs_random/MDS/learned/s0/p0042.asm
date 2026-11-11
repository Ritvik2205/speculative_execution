.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 16
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
and dl, -73
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
jmp .bb_0.1
.bb_0.1:
test ebx, -2015966884
test dil, sil
or rdi, -11
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 6
or rax, 1020005579
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
xor dl, sil
not dl
xor cl, sil
and al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
