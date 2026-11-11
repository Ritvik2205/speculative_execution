.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, bl
cmovl esi, eax
imul edx
add dl, al
and rax, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rax]
bswap rsi
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rax
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
cmovb edx, ebx
cmovl rcx, rcx
jl .bb_0.1
jmp .exit_0
.bb_0.1:
movsx esi, bl
cmovnz cx, cx
adc rsi, 110
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rcx
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], edi
add dl, 34 # instrumentation
add al, -28 # instrumentation
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
