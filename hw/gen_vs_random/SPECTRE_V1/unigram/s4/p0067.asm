.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rax]
mul di
add cl, -83 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 9
add bl, -41 # instrumentation
xchg dil, dl
dec al
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
xor esi, 33
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
dec bl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 48
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
lea rax, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
lea rbx, qword ptr [rcx + rbx + 37]
and rcx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rcx]
mul cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
