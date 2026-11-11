.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdi, rcx
cmovb ecx, edi
xor cl, 122
not si
test cl, al
cmovle esi, edi
cmovs eax, ecx
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
cmovs esi, ebx
and dil, 61
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
or bl, 84
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
xor di, -116
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -40
and rcx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 42
and al, -37
xor al, -15
xor bx, dx
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 98
cmovno dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
