.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dil
and rcx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rcx]
and bl, 16 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
or al, -75
cmovl eax, edi
and dl, -52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
and bl, -14 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rbx]
and eax, 366961170
bts dx, bx
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], eax
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 54
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 10
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rax], cx
btr rsi, 146
not cl
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
bt si, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
