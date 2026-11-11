.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rdi + rdi + 63323]
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
setz dl
and sil, 11
and ax, -22629
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -111
js .bb_0.1
jmp .exit_0
.bb_0.1:
cmovle rdx, rsi
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
lea si, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1164392837
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], si
cmovnb rdx, rsi
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
mul dil
add cl, -27 # instrumentation
setle cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
