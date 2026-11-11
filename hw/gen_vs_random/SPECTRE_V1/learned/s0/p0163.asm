.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
add eax, -1265007362
setno bl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], eax
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
btr cx, dx
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 7
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea si, qword ptr [rcx + rcx + 40728]
cmp dil, 11
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 68
and rcx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], sil
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], ax
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], si
test al, dl
mov al, 1
add al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
