.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 47 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
btc ecx, eax
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 47
mul rcx
bt edx, 38
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], di
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -25
setnl bl
xor cl, bl
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
add al, 31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edx
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 105
sbb cl, cl
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
mov rax, rsi
and rax, 1994547909
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], edx
sub ax, -27107
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
add bl, 3 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
