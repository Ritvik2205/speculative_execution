.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
mul rcx
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], di
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edx
bt edx, 38
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 47
add al, 31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rbx]
xor cl, bl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -13
add dl, 47 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
setnl bl
btc ecx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
