.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -8
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1987381845
cmovns rsi, rbx
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
cmovnl ax, di
and rcx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rcx]
xor al, -28
jmp .bb_0.1
.bb_0.1:
and cl, 85 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdi]
or cl, 100
bt rcx, rcx
and cl, -81 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rax]
cmovo cx, di
bts rax, 117
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdx
or si, 0b1000000000000000 # instrumentation
bsf di, si
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edi
btr ecx, edi
and rbx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rbx]
cmp sil, bl
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 50
or sil, -8
or al, -8
cmp ax, 1
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rcx
and rdi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdi]
bt eax, eax
test dil, -72
imul eax
cmovp rbx, rdi
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
and sil, -94
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 72
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 56
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx
movzx rax, cl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
