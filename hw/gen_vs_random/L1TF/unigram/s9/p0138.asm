.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 6
add dl, 98 # instrumentation
inc dl
lea cx, qword ptr [rsi + rdx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 80
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rsi]
and rdx, rdi
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
lea eax, qword ptr [rax + rdx]
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
cmp ecx, 22
imul rdx, rcx, 97
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 58
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
