.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
or al, -61
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
or rax, 302048971
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 28
test ebx, -2015966884
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
xor dl, -19
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
and al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
