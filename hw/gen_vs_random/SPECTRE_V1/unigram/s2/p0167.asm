.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 0
cmovb si, si
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], eax
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], edi
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dl
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 66
test bl, 25
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edi
xchg al, dl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
imul bl
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 93
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
cmp bl, bl
add dil, dil
and rdx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
