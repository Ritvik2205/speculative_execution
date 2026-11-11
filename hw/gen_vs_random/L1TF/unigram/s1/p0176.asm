.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rbx]
xor sil, 64
movsx ax, sil
neg ax
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 53
seto dl
jmp .bb_0.1
.bb_0.1:
setnle al
cmovnb bx, si
and rcx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rcx]
lea dx, qword ptr [rbx + rax + 3]
setb al
cmovns eax, edx
cmp dil, 65
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], al
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
