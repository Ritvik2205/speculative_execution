.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], ecx
btr ebx, edi
sbb dl, cl
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], 48
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], 20
not rdx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
cmp cx, 11
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
or bl, -88
mul ebx
add bl, 115 # instrumentation
setz sil
cmovb eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
