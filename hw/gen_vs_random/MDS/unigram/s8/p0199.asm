.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rbx]
xor cl, 83
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
btr ebx, edi
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 2
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
and bl, -62 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rsi]
and esi, edx
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edi
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and dl, -41 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rax]
test al, dil
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rbx
or ecx, eax
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
not rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
