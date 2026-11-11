.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno cx, dx
cmp cl, bl
lea di, qword ptr [rsi + rdx + 53]
sbb sil, -78
and rcx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -57
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], dl
lea edx, qword ptr [rdi + rbx]
add bl, 124 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 3
and di, 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
