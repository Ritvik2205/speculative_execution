.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 120 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rdi
sub al, -89
and rdi, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdx]
and bl, -65
add dl, dl
imul rsi, rbx
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rdx], cx
bswap rax
and rsi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rsi]
cmovno rax, rdx
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], sil
xchg edx, edi
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -123
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
