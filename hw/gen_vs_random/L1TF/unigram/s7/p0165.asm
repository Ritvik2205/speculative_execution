.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 106
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 79
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], dl
mov al, bl
cmp cl, bl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 39
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
xor al, bl
jmp .bb_0.1
.bb_0.1:
cwde
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
btr cx, si
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 11
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
