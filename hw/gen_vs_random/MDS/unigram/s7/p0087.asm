.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, ecx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
bt ax, 76
and dl, -5 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rsi]
or bx, 12
and bl, -120 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdi]
and dil, dl
or si, 94
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
and rcx, 107
and al, 14
or di, 0b1000000000000000 # instrumentation
bsf si, di
and rdi, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdi]
and cl, 126 # instrumentation
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
xor cl, cl
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
