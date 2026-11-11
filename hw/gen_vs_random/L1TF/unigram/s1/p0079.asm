.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rsi]
lea ax, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 44
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 13
xor si, 40
add dl, -98 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rbx]
add sil, -117 # instrumentation
lea rax, qword ptr [rsi]
adc dil, al
btc ax, si
cmovo edx, ecx
and rax, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rax]
sbb esi, 83
add cl, -93 # instrumentation
xchg rsi, rcx
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rsi], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
