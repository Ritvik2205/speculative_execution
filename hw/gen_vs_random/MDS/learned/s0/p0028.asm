.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -49 # instrumentation
cmovno cx, bx
cmovnb dx, cx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 72
cmovl rax, rdx
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
cmovb rbx, rdi
and dil, al
bt dx, cx
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ebx
cmovz si, ax
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rsi
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 6
and dil, bl
and rsi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rsi]
test bl, sil
mov al, 2
and sil, dl
bt cx, 1
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
or al, -48
cmovb di, di
movzx edx, bl
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 32
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
cmovp esi, edi
and rcx, 12
or rsi, 99
add al, dil
sbb cl, al
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
cmovb rdx, rsi
imul esi, edx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 6
and rsi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], edx
add dl, 118 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rdi, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
