.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -84 # instrumentation
setno dil
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 121
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rbx]
add al, -34 # instrumentation
setnp cl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dil
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -101
not edi
xor si, -50
xchg esi, edi
and esi, 92
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ecx
setb dl
or rdx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 19
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
