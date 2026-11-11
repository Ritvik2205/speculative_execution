.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdi]
or si, di
and rdx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdx]
xor sil, 10
and cl, -38 # instrumentation
cmovp rcx, rbx
and al, -61 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
or sil, sil
btr ebx, ecx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 9
and rcx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdi]
and di, 54
bts rsi, rsi
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
cmovb rax, rdi
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rax]
and bl, 44 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
