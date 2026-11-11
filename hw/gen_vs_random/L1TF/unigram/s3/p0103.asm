.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -53 # instrumentation
lea rbx, qword ptr [rdx + rcx + 17]
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
and rcx, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rcx]
dec cl
xor sil, 64
sub edx, ecx
mov dil, 31
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], dx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rdi]
movsx eax, sil
add dil, -36 # instrumentation
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], edi
test dl, -37
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
and cl, bl
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
