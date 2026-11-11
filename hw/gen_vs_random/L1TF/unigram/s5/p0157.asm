.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rdi
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rax
inc rdx
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
xchg dl, bl
jmp .bb_0.1
.bb_0.1:
cmovnp rax, rcx
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], 66
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
add cl, 72 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], si
sbb rdx, 98
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdx]
add dl, 109 # instrumentation
cmovnb rbx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
