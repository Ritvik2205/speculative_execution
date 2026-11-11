.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -34 # instrumentation
setl dl
sbb dl, dl
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
lea rcx, qword ptr [rdi]
jmp .bb_0.1
.bb_0.1:
add dx, ax
lea esi, qword ptr [rdi + rbx + 11]
and rcx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 17
bt rcx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
