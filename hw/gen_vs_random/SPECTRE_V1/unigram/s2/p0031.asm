.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
btc bx, si
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -86
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1164392837
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -74 # instrumentation
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
test rcx, rsi
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], edx
bts bx, 83
cmovz esi, ebx
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rcx
add al, 96 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
imul rdi, rsi
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
