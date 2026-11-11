.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 12 # instrumentation
cmovnb edx, eax
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdi]
cwde
cdq
lea rcx, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdx], 42
cmovb ebx, edi
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 0
jmp .bb_0.1
.bb_0.1:
dec di
cmp ax, -31327
cmovo bx, dx
mov al, bl
and rcx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rax]
not al
and rsi, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
test dil, -126
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 1665543409
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
test si, dx
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rax
and rdi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], si
lea bx, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1315047763
or dl, 1 # instrumentation
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
add al, 48 # instrumentation
cmovnz esi, esi
setnle al
or edx, ebx
setnz cl
mov rbx, -813004896564518775
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
