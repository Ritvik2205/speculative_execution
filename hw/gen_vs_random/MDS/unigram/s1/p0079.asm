.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rcx]
cmovno rbx, rdi
btc dx, si
and bl, bl
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
or edx, ebx
not rsi
test dil, 46
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
and bl, -123 # instrumentation
cmovnp si, di
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
and al, -68 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rsi]
and bl, 56 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
and al, 61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], ax
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ebx
or bl, sil
cmovnp si, cx
and bl, -89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdi]
not rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
