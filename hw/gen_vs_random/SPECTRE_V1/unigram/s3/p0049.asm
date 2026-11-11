.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], dl
sub edx, 38
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], dx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
xchg cx, si
add dl, -66 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], si
jp .bb_0.1
jmp .exit_0
.bb_0.1:
mov al, al
add al, -27 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], 100
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], ax
setno dil
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], sil
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], sil
add sil, 56 # instrumentation
cmovns edi, esi
or di, 91
movzx cx, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
