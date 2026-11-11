.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -89
jmp .bb_0.1
.bb_0.1:
cmovbe ax, si
and bl, 98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edx
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 98
or rbx, -77
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
test ax, 6779
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 73
btc di, 233
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 17
btc dx, 146
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
cmovb eax, edx
btc cx, 115
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 29
test dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
