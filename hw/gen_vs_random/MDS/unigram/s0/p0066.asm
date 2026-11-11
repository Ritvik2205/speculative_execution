.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs ecx, eax
and cl, -81 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rsi]
cmovnbe ax, dx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdi
cmovnb cx, cx
and cl, -22 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
cmovl rdi, rbx
and rsi, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rsi]
and cx, ax
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 11
not cx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
or di, 0b1000000000000000 # instrumentation
bsf di, di
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rcx], eax
and bl, 52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 8
or al, -8
and rdx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
