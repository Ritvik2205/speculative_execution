.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, 30932
and rsi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], eax
cmovno rax, rsi
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], -114
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
or dil, 12
xor dl, dl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
test dl, dl
and bl, 120 # instrumentation
cmovnp dx, si
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], edx
or al, bl
and dl, -1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -93
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
bts rsi, rbx
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], bx
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
xor dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
