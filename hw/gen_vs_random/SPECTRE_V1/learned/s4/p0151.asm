.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rsi]
or rdx, 1 # instrumentation
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
or dl, sil
jb .bb_0.1
jmp .exit_0
.bb_0.1:
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
xor cl, -103
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 21
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 76
or ebx, eax
sub al, 10
add dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
