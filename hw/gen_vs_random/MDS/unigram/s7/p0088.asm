.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 3
and dil, cl
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
not bl
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
test dl, 9
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rdx]
or dl, cl
bts edx, edx
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
and ecx, -104
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
test rbx, 65
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
