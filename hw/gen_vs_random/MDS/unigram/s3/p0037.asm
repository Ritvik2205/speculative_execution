.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rax], di
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 111
and rsi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rsi]
test bl, -9
test bl, 65
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], -77
and rsi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], dx
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
and rax, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rax]
or si, 0b1000000000000000 # instrumentation
bsr si, si
and rdi, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rdi]
btr ax, 193
test dil, dl
jmp .bb_0.1
.bb_0.1:
and sil, sil
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and di, 99
cmovo rdx, rbx
xor dil, al
xor ebx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
