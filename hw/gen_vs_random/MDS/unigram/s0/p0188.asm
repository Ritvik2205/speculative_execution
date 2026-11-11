.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 98
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
and al, -23 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
btr rbx, 93
and al, 34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rax]
or dl, -21
or di, 0b1000000000000000 # instrumentation
bsr di, di
jmp .bb_0.1
.bb_0.1:
cmovnle rdi, rbx
or eax, -900576213
xor dil, sil
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rcx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rax]
cmovl rbx, rcx
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
or dil, al
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
