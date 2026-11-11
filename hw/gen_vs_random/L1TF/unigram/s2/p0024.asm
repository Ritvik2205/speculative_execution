.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, dl
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 48
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
xor al, 14
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rdx]
test dl, 17
and rdi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
lea rcx, qword ptr [rax + rdx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], bl
inc dx
add al, 61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdx]
add dl, al
setnl al
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
bt si, 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
