.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe edx, eax
and bl, 8 # instrumentation
cmovz rdx, rbx
and rdi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 12
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
and rsi, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rsi]
xor bl, -61
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 75
and dl, 72 # instrumentation
cmovz edx, esi
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ecx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 22
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
bts rdx, rsi
and dl, -34 # instrumentation
cmovs rbx, rdx
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rax], si
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
xor dl, 34
or si, -12
and rdi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
