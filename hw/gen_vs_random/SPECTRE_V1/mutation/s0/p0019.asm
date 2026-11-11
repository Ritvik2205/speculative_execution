.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], ax
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 42
xor esi, 106
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dl
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], dx
add dl, 52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], di
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], di
and rsi, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rdx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
add cl, -96 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
mov cl, -72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
