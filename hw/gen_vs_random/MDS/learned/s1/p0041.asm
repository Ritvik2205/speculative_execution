.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 91 # instrumentation
cmovnle edi, edi
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
or sil, cl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
or bx, 14
or ax, 85
and dil, -62
and al, al
test eax, 1287331633
xor al, sil
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
xor al, 8
and rdx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdx]
test rsi, 64
or bx, 71
xor bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
