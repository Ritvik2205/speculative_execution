.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz edi, edi
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edi
and cl, sil
and rax, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rax]
and bl, 68
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 67
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rdx], di
and dl, sil
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, edi
btr rdx, 57
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 58
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 45
bt rcx, rcx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
or ax, -11837
btr rbx, 63
and sil, -99 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rbx]
cmovz cx, ax
btr rdx, 5
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
