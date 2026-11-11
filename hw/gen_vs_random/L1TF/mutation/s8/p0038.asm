.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], esi
and rdi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdi]
and edx, ecx
and rdx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 105
sbb cl, cl
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
mov rax, rsi
and rax, -109
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], edx
sub ax, -3178
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
add bl, 3 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
add cl, 69 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 0
or cl, -78
lea dx, qword ptr [rsi + rdi + 47468]
and rsi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 112
sub cl, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
