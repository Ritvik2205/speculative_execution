.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb rax, rcx
and dx, 31
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dil
lea si, qword ptr [rbx]
add cl, 72 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rsi]
test di, cx
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
lea edi, qword ptr [rdx + rdi + 9]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], 73
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
cmp cl, sil
and rax, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rax]
add bl, -79 # instrumentation
cmovo ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
