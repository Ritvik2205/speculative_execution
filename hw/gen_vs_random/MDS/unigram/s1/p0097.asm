.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
and dx, bx
or sil, dl
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
bts rdx, 200
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rcx], eax
btr dx, bx
cmovp edx, edi
test dl, 9
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
and rcx, 107
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edx
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
test rbx, 74
and rcx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 1
cmovo ebx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
