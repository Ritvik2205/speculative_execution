.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
lea rbx, qword ptr [rdi + rdi + 63323]
and ax, 23118
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -111
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
setz dl
and sil, 52
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
cmovle rdx, rsi
cmovnb rdx, rsi
lea si, qword ptr [rbx]
add cl, -27 # instrumentation
setle cl
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], si
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1164392837
mul dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
