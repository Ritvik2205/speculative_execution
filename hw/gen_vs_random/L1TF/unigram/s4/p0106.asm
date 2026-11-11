.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle edi, eax
adc al, sil
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rbx]
add bl, 91
and rdx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdx]
mul dx
btr si, 9
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 7
test dx, 9
test rsi, 39
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al
bts rsi, 38
cmp rax, rcx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
add dl, -117 # instrumentation
lea rcx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
