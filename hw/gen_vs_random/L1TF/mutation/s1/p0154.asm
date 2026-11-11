.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 10 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], -70
test rcx, rdi
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 7
add al, 54 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], edi
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
and rdx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdx], -44
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], dx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
test rsi, 493258429
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rcx
and rsi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], si
cmovnbe rbx, rdx
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
jmp .bb_0.2
.bb_0.2:
xor dl, 64
sub edi, 56
add rbx, 99
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -57
and rdi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
and rax, -109
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
