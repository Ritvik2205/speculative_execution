.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rdi
add al, 122 # instrumentation
cmovns edx, ebx
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
mov rbx, 9101099553822202722
cmovno edi, edx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], eax
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
dec rdi
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
btc rax, rdx
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 35
sbb al, -47
cmovs rdi, rcx
cmp cl, 59
add dl, 31 # instrumentation
cmovnl bx, bx
add bl, bl
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
and al, -36
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
cmovo rdx, rdx
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 74
and dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
