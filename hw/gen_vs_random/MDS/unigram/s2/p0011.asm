.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, di
or al, dl
cmovz ax, ax
or cl, 119
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], -23
cmovo rbx, rcx
and rax, 498847670
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
xor rdx, -59
test bl, bl
cmovz ax, ax
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
and dl, 8 # instrumentation
cmovle dx, di
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
