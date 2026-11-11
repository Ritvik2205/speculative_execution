.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
or rdx, 1 # instrumentation
add al, 122 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
or dl, cl
xchg rcx, rsi
xchg rdx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
sbb eax, -1688332460
and cl, 58
btc cx, si
cmp cl, dl
cmp ax, -15031
cmp rax, -120490246
imul rsi, rdi
cmp eax, -92285311
cmovns dx, di
cmovz esi, ebx
xor al, 102
test di, 39
add dl, -26 # instrumentation
btr edx, 30
neg rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
