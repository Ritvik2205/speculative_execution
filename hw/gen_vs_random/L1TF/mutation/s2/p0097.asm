.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc ecx, eax
add al, 31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rbx]
add dl, 47 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
mul rcx
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], di
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -25
setnl bl
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
bt edx, 38
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 47
xor cl, bl
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
