.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
or eax, 359647041
test al, -7
btc edx, ecx
bts rax, 77
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 69
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], eax
xor ecx, 8
jmp .bb_0.1
.bb_0.1:
xor ax, -16696
btr rbx, 193
or dx, 0b1000000000000000 # instrumentation
bsr di, dx
cmovp di, ax
and rdi, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdi]
bts ebx, 205
and sil, -108 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rax]
cmovnz ebx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
