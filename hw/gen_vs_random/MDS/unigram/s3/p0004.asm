.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ax, 193
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
or ecx, edi
and rdi, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 67
and dl, -73
or dl, 85
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
test di, dx
and cl, cl
jmp .bb_0.1
.bb_0.1:
cmovs ecx, ecx
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rax], rax
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and cl, 18 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rbx]
cmovo edi, eax
and dl, -52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], sil
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
