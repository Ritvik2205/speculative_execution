.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 105
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 1
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 7
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rcx], si
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rsi
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -73
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 82
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 85
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 92
test cl, dl
cmovs bx, di
lea dx, qword ptr [rbx]
add dl, al
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 9
cmovo edx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
