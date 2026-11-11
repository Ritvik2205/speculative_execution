.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], edi
add al, 54 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rbx]
test rsi, 493258429
test rcx, rdi
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 7
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
add dl, 10 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], -70
and rdx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdx], -44
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], dx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
cmovnbe rbx, rdx
and rsi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], si
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rcx
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
