.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb rbx, rsi
and cl, -15 # instrumentation
cmovnp cx, cx
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 7
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 87
or al, dil
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 4
btr si, dx
bts bx, 3
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], ax
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdi
cmovno rdx, rcx
cmovnle rdx, rbx
xor bl, -27
bt rax, rdi
cmovnz eax, esi
bt ebx, eax
and rax, 1250429750
and rbx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
