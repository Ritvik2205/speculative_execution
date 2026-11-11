.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, dil
and rdi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdi]
bt bx, 253
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
cmovl rsi, rax
and al, 50 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -83
xor dil, dil
bts edx, edx
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rax
and rbx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdx]
xor dl, -43
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], -32
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
or dil, -76
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], bx
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
