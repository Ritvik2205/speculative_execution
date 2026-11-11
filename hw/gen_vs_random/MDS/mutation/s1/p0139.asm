.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 120 # instrumentation
cmovnz esi, eax
and rcx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rcx]
test rax, rdi
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
xor bl, 67
xor bl, al
and rdi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdi]
xor dl, -59
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ecx
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
bts edx, 189
and dl, -41 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdi]
btc bx, 58
xor al, -89
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 6
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
xor rax, -843636050
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rcx]
test al, -7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
