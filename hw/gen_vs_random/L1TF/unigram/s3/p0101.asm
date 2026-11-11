.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, bx
cwd
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
xor dil, -42
and rbx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
imul rdi, rdi
setnb sil
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], -24
lea rax, qword ptr [rax + rbx + 83]
and rcx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rcx]
add bl, 92 # instrumentation
sets sil
and rsi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rsi]
add sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
