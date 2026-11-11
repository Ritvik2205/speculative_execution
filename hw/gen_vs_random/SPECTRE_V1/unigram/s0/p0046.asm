.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, 40
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], 26
lea bx, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdi]
add dl, 59 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rdx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
lea rsi, qword ptr [rdi + rdx]
test rdx, rdi
and rcx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rcx]
cmp ebx, -33
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ecx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
sub bl, al
xor bl, dil
add al, 64 # instrumentation
cmovnz di, bx
and cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
