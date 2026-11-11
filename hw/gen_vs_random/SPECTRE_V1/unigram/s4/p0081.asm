.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 98
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, esi
and rax, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
add cl, 29 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 23
setnp al
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 7
setnl al
add al, -27 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], 10
jp .bb_0.1
jmp .exit_0
.bb_0.1:
test dl, 68
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, esi
sbb dl, -23
add al, -121 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
