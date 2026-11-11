.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
xor rdx, -59
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
cmovnz rdx, rbx
bt edi, eax
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 39
not dil
and rsi, 97
and si, -121
or bl, dl
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdx], eax
bt dx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
