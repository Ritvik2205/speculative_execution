.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rax]
or al, cl
and cl, 9 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdi]
and al, -8
test al, dil
and rcx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], edi
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 78
and rdi, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
btr edx, ebx
or eax, eax
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ebx
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rcx], si
not cl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
or cl, 39
or dl, 85
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], esi
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
