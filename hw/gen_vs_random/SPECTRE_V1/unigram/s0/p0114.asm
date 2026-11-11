.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rcx + rdx]
xor edx, ebx
add dil, 113 # instrumentation
setnb dil
and rdi, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rcx], si
add dl, 34 # instrumentation
add al, -28 # instrumentation
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rcx
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
add dl, 95 # instrumentation
cmovnb rax, rdi
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
btr cx, ax
lea rcx, qword ptr [rcx + rbx]
and rdx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
