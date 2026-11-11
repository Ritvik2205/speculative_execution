.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add cl, dl
sbb al, -47
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
cmovz esi, ecx
setnb cl
cmp dil, sil
mov edx, ecx
test al, 66
add dl, -58 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdx]
or sil, 92
dec bl
cmovl rcx, rsi
btr rdi, rsi
cmovo rsi, rdi
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 30
cmovz edx, eax
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], eax
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
add cx, cx
sbb eax, 2051746726
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
