.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add eax, -2019837038
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
setno bl
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 7
btr cx, dx
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], eax
jb .bb_0.1
jmp .exit_0
.bb_0.1:
cmovno rbx, rax
lea si, qword ptr [rcx + rcx + 40728]
cmp dil, 11
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
sbb al, -61
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 68
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
