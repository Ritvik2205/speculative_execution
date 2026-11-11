.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt edx, eax
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 59
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rcx
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
sbb ecx, 48
xor ax, 22976
and rdx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdx]
xor di, 55
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 71
and rdx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx], -1
not bx
add dl, 10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 73
lea rbx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
