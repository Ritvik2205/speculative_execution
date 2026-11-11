.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 44 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rdx
cwd
setnl dl
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], dx
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 73
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], -170871715
and dl, -92
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], cx
js .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 83 # instrumentation
setbe al
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
add eax, -55403434
sbb al, cl
cmovz ebx, ecx
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], 75
and rsi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
