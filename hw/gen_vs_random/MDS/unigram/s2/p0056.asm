.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 41
and rsi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
and cl, 78 # instrumentation
cmovs ax, di
or bl, 43
test bl, 65
xor al, cl
xor bl, -27
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rbx]
and sil, -14 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rsi]
bts rcx, rbx
jmp .bb_0.1
.bb_0.1:
xor cl, 83
test dl, sil
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 45
and dl, dl
test sil, sil
cmovns di, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
