.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ecx
add cl, 72 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rdi]
lea rax, qword ptr [rbx + rcx]
sbb dl, dl
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
add sil, -61
and rbx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rbx]
xor bx, 54
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
sub cl, sil
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rdx
xchg esi, ecx
and rax, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rax]
test bl, -92
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
mul rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
