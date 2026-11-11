.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rbx
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
and rax, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], edx
lea rax, qword ptr [rdx + rdi + 42]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rdi]
add dil, 65 # instrumentation
cmovo rdi, rbx
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and dil, sil
add dl, dl
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ebx
sbb dx, 33
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
