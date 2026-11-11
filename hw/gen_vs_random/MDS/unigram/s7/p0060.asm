.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and dl, -73
test rdx, 30
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edi
and cl, -27 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
or dl, cl
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
xor cl, 55
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
or al, cl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], -9
cmovz edi, esi
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
or ax, -14271
and bl, 49 # instrumentation
cmovbe rsi, rax
and rdx, 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
