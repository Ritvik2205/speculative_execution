.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, si
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
or cl, -36
cmovnbe ecx, edx
xor ecx, ecx
cmovl rbx, rdi
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -57
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and al, -38 # instrumentation
cmovnb si, si
or dl, al
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
cmovs eax, eax
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
bt cx, di
xor edx, esi
test al, sil
cmovnb rdi, rdx
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
