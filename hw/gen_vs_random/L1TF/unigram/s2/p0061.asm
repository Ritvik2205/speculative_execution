.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 105
and rax, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdi]
cmovle rdx, rsi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 71
and rbx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rbx], bx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], di
test dx, dx
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], di
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
add bx, 74
neg bl
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
lea ebx, qword ptr [rcx]
bt rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
