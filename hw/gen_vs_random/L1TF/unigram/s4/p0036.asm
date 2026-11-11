.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rdx
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 66
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rax], edx
test rax, rdx
cmp sil, dl
sub dil, bl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
lea rsi, qword ptr [rax + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rcx]
add bl, -52 # instrumentation
not ecx
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
xchg al, al
not eax
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
