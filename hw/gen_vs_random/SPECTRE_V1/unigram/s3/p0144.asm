.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz rbx, rdi
mov al, dl
or dl, 41
and rbx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rbx]
lea eax, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], di
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
cmp bl, al
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 44
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 43
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 19
cmp rsi, rax
not rax
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
add cl, -61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
