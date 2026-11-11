.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 71
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rbx]
add cl, -34 # instrumentation
setl bl
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
add cx, bx
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
add bl, 91
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
add al, cl
lea rbx, qword ptr [rdi + rdi]
add esi, edx
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 39
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 21
setnb cl
or al, dl
add bl, -4 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
