.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
test eax, -1812342404
add eax, edi
bt eax, edx
lea rdi, qword ptr [rsi + rcx + 47]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
and rcx, 10
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
or dil, -28
add dl, -121 # instrumentation
cmovnp ebx, edx
lea rax, qword ptr [rcx + rax + 40]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 10
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
setle al
setnle cl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
