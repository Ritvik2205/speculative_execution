.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test esi, 425331143
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
xor dx, 24
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
cmovp bx, si
xor rsi, -117
and dil, dl
or edx, -78
btr eax, 51
test ax, -11534
and rcx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rcx]
and dl, -58 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edi
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], -33
and dl, 47 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rsi]
cmovnl bx, dx
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 18
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -2
not rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
