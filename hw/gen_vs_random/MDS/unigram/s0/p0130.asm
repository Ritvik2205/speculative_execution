.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 35
and rax, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
and rbx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rcx]
cmovnz di, bx
test al, -59
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 77
or al, -48
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ebx
cmovnz edi, eax
cmovo ecx, edi
bt rdi, 88
bt ebx, ebx
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rax
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], edi
bt edi, edi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
