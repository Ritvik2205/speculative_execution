.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rsi
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
cmovnb rsi, rax
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
btr dx, dx
and al, bl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
bt ecx, edi
or dl, -31
and ax, -122
xor rax, -1499464454
cmovp edi, edi
cmovbe edi, eax
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and rbx, rbx
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
or dx, 0b1000000000000000 # instrumentation
bsf ax, dx
xor sil, 94
and rdx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
