.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 41
not al
or bl, bl
xor ax, -1005
or bl, 43
xor cl, al
btc rbx, 118
or rax, 302048971
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -6
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
xor ax, -23364
jmp .bb_0.1
.bb_0.1:
xor sil, -14
btc si, ax
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
xor cl, bl
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rcx
xor dl, 8
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
cmovp di, si
cmovns di, dx
and rcx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
cmovnbe ebx, ebx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
btr si, cx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 33
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], ax
and bl, 120 # instrumentation
cmovnle edi, edi
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
cmovns edi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
