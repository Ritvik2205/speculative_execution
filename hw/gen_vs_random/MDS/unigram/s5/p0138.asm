.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rsi, 105
and rax, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rax]
or si, 0b1000000000000000 # instrumentation
bsf si, si
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], cx
or bl, -62
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
cmovno rsi, rdi
test rbx, 67
and rcx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rcx]
btc eax, edx
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -83
btc bx, ax
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], eax
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], 6
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 105
btr cx, si
test bl, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
