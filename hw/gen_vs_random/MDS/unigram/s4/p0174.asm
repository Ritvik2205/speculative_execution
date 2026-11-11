.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or si, 37
xor bl, bl
and dil, 56
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
and rbx, 54
bt esi, 50
cmovle edx, ebx
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rdx]
or bl, sil
and rdi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdi]
or sil, bl
and dl, -107 # instrumentation
cmovz rcx, rdx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -20
and al, dl
cmovs rax, rbx
cmovnle edi, eax
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
xor dx, 23
cmovz rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
