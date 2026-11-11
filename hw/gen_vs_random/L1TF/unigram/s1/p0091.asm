.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, dil
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rax], si
add bl, -80 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rbx]
cmp dx, 33
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
add rax, 909978580
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 41
add bl, 62 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], ecx
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], dx
jmp .bb_0.1
.bb_0.1:
or ebx, 4
dec dil
cmp edi, 33
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], cx
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx], 45
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
