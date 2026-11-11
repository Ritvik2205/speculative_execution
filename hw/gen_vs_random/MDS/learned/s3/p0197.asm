.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 6
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
and al, -103
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rsi
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
xor dl, al
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
or cl, cl
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], ax
jmp .bb_0.2
.bb_0.2:
or al, bl
test esi, 1857129931
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
bt bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
