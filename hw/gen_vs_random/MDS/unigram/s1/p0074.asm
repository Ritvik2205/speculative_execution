.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 11
xor bx, 62
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rbx
cmovo edi, eax
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
and rdx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdx]
and cl, dl
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
bts ecx, edx
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 84
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 0
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
and dl, cl
cmovns eax, esi
and rax, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rax]
and dl, -7
and rbx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], ebx
btc rcx, 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
