.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs cx, si
and rax, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rax]
sbb ecx, 3
add al, -36 # instrumentation
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
or eax, edi
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 19
and rdx, rdx
add sil, -56 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], esi
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea esi, qword ptr [rbx + rbx + 66]
adc di, 69
bswap edx
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 4
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rbx
add dl, 91 # instrumentation
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdi
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
add bl, -57 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
