.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 2
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 3
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 2
bts cx, di
and al, -37
and rsi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rsi]
cmovs ebx, eax
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dil
or rcx, 13
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdx
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 42
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 22
and bl, 52 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
cmovnle rax, rdi
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
and rcx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and sil, 122 # instrumentation
cmovnbe esi, ecx
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
