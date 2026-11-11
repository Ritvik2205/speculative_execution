.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -49 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
xor ax, 32760
inc edx
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
add esi, -17
and rbx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
setb al
and rbx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rbx]
inc dl
cmovb si, ax
btc ecx, ecx
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], ax
or al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
