.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 44
or sil, dil
and bl, -14 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdx]
cmovz ecx, ebx
and sil, -83 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rbx
and cx, -8
and rdx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdx]
or al, dil
xor cl, dl
and rax, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
test rbx, 83
and sil, -34 # instrumentation
cmovs rax, rsi
and rbx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rbx]
and dl, -103 # instrumentation
cmovns edx, edx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
