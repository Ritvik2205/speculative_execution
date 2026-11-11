.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdx, rdx
cmovle eax, edi
and al, 66 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rcx]
test bl, -14
and rdi, rdi
cmovno ax, ax
bts ecx, 3
xor rdx, -59
and rax, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
test eax, ecx
and dl, bl
not al
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
cmovns edx, esi
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rax, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 42
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
