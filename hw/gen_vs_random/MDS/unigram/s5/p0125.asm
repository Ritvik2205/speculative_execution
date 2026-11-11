.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle rax, rdi
and al, -83 # instrumentation
cmovnp rdx, rcx
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edx
and bl, -62 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdx]
btr rbx, 193
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
and cl, 91 # instrumentation
cmovle rcx, rcx
and dx, 3
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 50
cmovo ax, dx
or eax, edi
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], dx
cmovnl edi, eax
and rdi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
test eax, ebx
and rax, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
