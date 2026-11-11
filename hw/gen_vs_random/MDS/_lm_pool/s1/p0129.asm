.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and cx, -8
not bl
or sil, -49
xor al, 55
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ebx
and al, 106
btc eax, 40
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
xor cl, al
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
btc rax, 110
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
and al, -114
or al, 54
or al, 30
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
