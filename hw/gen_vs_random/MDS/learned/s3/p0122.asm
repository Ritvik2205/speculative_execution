.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 0
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 115
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 42
and rdi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
cmovnle ecx, ebx
and rsi, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 38
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 6
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 60
xor al, -28
cmovo edi, ecx
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
and rax, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 60
inc esi
xor eax, 73
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], bx
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
