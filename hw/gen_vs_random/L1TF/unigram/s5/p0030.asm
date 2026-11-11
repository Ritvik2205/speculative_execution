.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
or bl, 114
add dil, -7
add bl, 64 # instrumentation
sbb bl, al
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
xor esi, ecx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 9
lea si, qword ptr [rax + rdi + 66]
sbb al, cl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
and dx, 55
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
sbb rsi, rdi
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
not cl
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
