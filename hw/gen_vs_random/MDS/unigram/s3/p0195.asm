.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 91 # instrumentation
cmovnle esi, esi
btr rax, 56
cmovb dx, si
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rax
or cx, 39
btc rdx, 6
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
test di, ax
not al
and rax, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rax]
and bl, bl
and rdi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdi]
cmovnle cx, cx
and cl, -76 # instrumentation
cmovl dx, cx
or al, cl
and rdi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdi]
test edi, ecx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], bx
cmovnle rsi, rax
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
