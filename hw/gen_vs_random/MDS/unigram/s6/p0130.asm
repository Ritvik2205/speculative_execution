.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
cmovbe cx, di
xor al, -89
and rdx, 22
or al, 25
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 89
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
btc rsi, 105
and rbx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 51
test bl, -14
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdi]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ebx
xor rax, -404206377
and rbx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
xor sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
