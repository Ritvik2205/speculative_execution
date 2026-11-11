.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
bts rax, 77
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
not rsi
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 88
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 66
xor dil, cl
test dl, 48
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 45
and rdi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], esi
or dil, 12
xor sil, -126
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or al, al
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], edx
or di, 0b1000000000000000 # instrumentation
bsr di, di
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], -33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
