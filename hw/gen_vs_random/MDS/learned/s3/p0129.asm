.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rsi]
or dl, bl
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 8
or edx, eax
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rsi], bx
lea ebx, qword ptr [rbx]
sub eax, 57
jmp .bb_0.1
.bb_0.1:
test rax, 1732677821
lea rdx, qword ptr [rax + rdx + 25]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 61
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
or rdi, rcx
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
or al, dl
and ecx, 70
bts rax, 117
cmovns eax, eax
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], edi
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rbx
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
