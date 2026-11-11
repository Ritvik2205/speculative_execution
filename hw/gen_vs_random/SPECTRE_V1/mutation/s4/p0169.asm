.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 7
setno bl
btr cx, dx
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
add eax, -2019837038
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], eax
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea si, qword ptr [rcx + rcx + 40728]
cmovno rbx, rax
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
cmp dil, 11
sbb al, -61
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
