.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], edi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 56
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
btr cx, 136
xor sil, -14
not sil
btr di, 89
cmovnbe ecx, eax
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], di
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
xor bl, dil
bt si, dx
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rdx], dx
and al, -81 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
cmovbe edx, edx
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
