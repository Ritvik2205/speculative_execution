.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr cx, dx
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], eax
add eax, -1265007362
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 7
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
setno bl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
cmp dil, 11
sbb al, -61
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
cmovno rbx, rax
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
lea si, qword ptr [rcx + rcx + 40728]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
